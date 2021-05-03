using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProjectV4
{
    public partial class UploadMap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            //https://docs.microsoft.com/en-us/troubleshoot/aspnet/upload-file-to-web-site
            string strFileName;
            string strFilePath;
            string strMapFolder;
            
            strMapFolder = Server.MapPath("~/Maps/");
            // Retrieve the name of the file that is posted.
            strFilePath = strMapFolder + "/" + MapNameTxtBox.Text ;
            if (Directory.Exists(strFilePath))
            {
                mapNameTakenLabel.Visible = true;//Throw error about map names etc
            }
            else
            {
                //Otherwise, this is a new map so upload
                if (mapFile.Value != "")
                {
                    strFileName = mapFile.PostedFile.FileName;
                    

                    strFileName = Path.GetFileName(strFileName);
                    // Create the folder if it does not exist.
                    Directory.CreateDirectory(strFilePath);

                    //create metadata
                   // metaData += "mapname: " + mapFile.PostedFile.FileName + "\n"
                       // + "enddata";
                    // Write to file.
                   // using (StreamWriter _metaData = new StreamWriter(strFilePath + "/meta", true))
                   // {
                   //     _metaData.WriteLine(metaData);
                   // }

                    // Save the uploaded file to the server.
                    strFilePath = strFilePath + strFileName;
                    /*  We already know it doesn't exist, so we don't need to check here.. I'll leave it here if it helps someone in the future
                    if (File.Exists(strFilePath))
                    {
                        lblUploadResult.Text = strFileName + " already exists on the server!";
                    }
                    */
                    //else
                    //{
                    mapFile.PostedFile.SaveAs(strFilePath);
                    mapUploadResult.Text = strFileName + " has been successfully uploaded.";
                    //}
                    //strFilePath = strMapFolder + "/" + MapNameTxtBox.Text + "/";
                    //strFileName = imageFile.PostedFile.FileName;
                   // strFileName = Path.GetFileName(strFileName);
                    //strFilePath = strFilePath + strFileName;
                    //imageFile.PostedFile.SaveAs(strFilePath);
                   // imageUploadResult.Text = strFileName + " has been successfully uploaded.";
                }

                else
                {
                    mapUploadResult.Text = "Click 'Browse' to select the file to upload.";
                }
                // Display the result of the upload.
                frmConfirmation.Visible = true;
            }
        }
    }
}