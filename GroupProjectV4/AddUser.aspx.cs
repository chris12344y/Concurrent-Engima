﻿using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace GroupProjectV4
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        bool IsValidEmail(string str)
        {
            return Regex.IsMatch(str, @"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$");
        }


        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            if (IsValidEmail(EmailTxtBox.Text) && RolesList.SelectedValue != "")
            {
                // Get User Information
                string name = UserNameTxtBox.Text;
                string email = EmailTxtBox.Text;
                string pass = PasswordTxtBox.Text;
                string role = RolesList.SelectedValue;

                // Get connection String
                string constr = ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;

                // Set up SQL Query
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("AddUser");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", pass);
                cmd.Parameters.AddWithValue("@Role", role);
                cmd.Connection = con;

                // Execute Query
                con.Open();
                cmd.ExecuteScalar();
                con.Close();

                // Show messages
                //make buttons invisible
                createdMsg.Visible = true;
                createdButton.Visible = true;
                ErrorLabel.Visible = false;
                SubmitBtn.Visible = false;
            }
            else
            {
                // Add Error Message
                ErrorLabel.Visible = true;
            }
        }

        protected void createdButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}