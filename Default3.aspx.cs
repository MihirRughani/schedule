using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    ConfigClass cnf = new ConfigClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar_SelectionChanged(object sender,
                                        EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        //String st = "Y";
       
        string[] strfld = new string[7];
        string[] strval = new string[7];

        strfld[0] = "time";
        strval[0] = txttime1.Text + txttime2.Text;

        strfld[1] = "section";
        strval[1] = txtsection.Text;

        strfld[2] = "clnm";
        strval[2] = ddlclassnm.SelectedValue.ToString();

        strfld[3] = "clno";
        strval[3] = ddlclassno.SelectedValue.ToString();

        strfld[4] = "subject";
        strval[4] = txtsub.Text;

        strfld[5] = "sfac";
        strval[5] = txtfaculty.Text;

        strfld[6] = "date";
        strval[6] = Calendar1.SelectedDate.ToShortDateString();

        cnf.insertData("class", strfld, strval);
        Response.Write("<script>alert('Record Added Successfully');</script>");
    }
    protected void ddlclassnm_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //dt = cnf.DtTable("select time, clno, subject, sfac from class where date='" + lbldate.Text + "' AND clnm='" + lblclass.Text + "'");
    }
}