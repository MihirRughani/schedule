using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Schedule : System.Web.UI.Page
{
    ConfigClass cnf = new ConfigClass();
    DataTable dt = new DataTable();

    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Calendar_SelectionChanged(object sender,
                                         EventArgs e)
    {
        lbldate.Text = Calendar.TodaysDate.ToString();
        lbldate.Text = Calendar.SelectedDate.ToString();
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        string[] strfld = new string[1];
        string[] strval = new string[1];
        String strday = System.DateTime.Now.Day.ToString();

        strfld[0] = "date";
        strval[0] = Calendar.SelectedDate.Date.Day.ToString();

        
        lbldate.Text = Calendar.SelectedDate.ToShortDateString();
     
        dt = cnf.DtTable("select * from class where date='"+lbldate.Text+"' AND clnm='"+lblclass.Text+"'");
     
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("Schedule.aspx");
            Response.Write("<script>alert('Login Successfully');</script>");
            btn.Attributes.Add("onclick", "return false;");
        }
        else
       {
           
           lbldate.Text = Calendar.SelectedDate.Date.ToShortDateString();
           lblclass.Text = ddl_class.SelectedValue.ToString();
       }
      
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
       dt = cnf.DtTable("select time, clno, subject, sfac from class where date='" + lbldate.Text + "' AND clnm='" + lblclass.Text + "'");
       
    }
    protected void ddl_class_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
    }

}
