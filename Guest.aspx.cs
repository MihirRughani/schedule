using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class Guest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string FilePath = Server.MapPath("~/Schedule.pdf");
        WebClient User = new WebClient();
        Byte[] FileBuffer = User.DownloadData(FilePath);
        if (FilePath != null)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-length", FileBuffer.Length.ToString());
            Response.BinaryWrite(FileBuffer);
        }
    }
}