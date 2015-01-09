using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    ConfigClass cnf = new ConfigClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        dt = cnf.DtTable("select * from Register where email='" + txt_username.Text + "' AND password='" + txt_password.Text + "'");
        if (dt.Rows.Count > 0)
        {
           Session["uid"] = dt.Rows[0][0].ToString();
           Session["nm"] =  dt.Rows[0][1].ToString();
           Session["cl"] =  dt.Rows[0][2].ToString();

            Response.Write("<script>alert('Login Successfully');</script>");
            Response.Redirect("attendence.aspx");
            
        }
        else
        {
            Response.Write("<script>alert('Both Are Not Matched');</script>");
           
        }
    }
}