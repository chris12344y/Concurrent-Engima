using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProjectV4
{
    public partial class ViewMaps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateDownloadLinks();
        }

        //General format for generation of download links
        //Realistically, this is not what we want here, but it probably won't take a whole lot to refine it to what we really *need* here
        //However, this is probably about all that we need in UserControlPanel.aspx for admin stuff
        private void GenerateDownloadLinks()
        {
            if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/Maps/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    string fileName = Path.GetFileName(filePath);
                    files.Add(new ListItem(fileName, "~/Maps/" + fileName));
                }
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
            //files is datasource for gridView1 here
            /* List<ListItem> files = new List<ListItem>();
             string path = Server.MapPath("~/Images/");

             //iterate through all directories in the /Maps/ folder
             string[] mapPaths = Directory.GetDirectories(path);
             foreach(string mapPath in mapPaths)     //This loop runs once per directory, so this is a great place to add corresponding HTML? idk how to do that though.
                                                     // I think you can add javascript to auto-update html? Though i feel like there's an easier way.
             {
                 //get all files in the current directory.
                 string[] filePaths = Directory.GetFiles(mapPath);

                 //here, could probably open the metadata file and display information
                 foreach(string filePath in filePaths)
                 {
                     //add each file to the datasource
                     files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                 }
                 //bind & display
                 GridView1.DataSource = files;
                 GridView1.DataBind();*/
        
        }
        
        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void DeleteFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}