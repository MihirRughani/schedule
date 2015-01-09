using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class attendence : System.Web.UI.Page
{
    ConfigClass cnf = new ConfigClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["uid"] == null || Session["uid"] == "")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            lbluser.Text = Session["nm"].ToString();

            String strday = System.DateTime.Now.Day.ToString();
            String strmon = System.DateTime.Now.ToString("MMM");
            String stryear = System.DateTime.Now.Year.ToString();


            lblmonth.Text = strmon.ToString();
            lblYear.Text = stryear.ToString();

            lbldate.Text = strday.ToString() + "-" + strmon.ToString() + "-" + stryear;

            lblid.Text = Session["uid"].ToString();
            lblclass.Text = Session["cl"].ToString();
        }
    }

    protected void btnOk_Click(object sender, EventArgs e)
    {
        if (ddlatt.SelectedValue == "Present")
        {
            ViewState["at"] = "Present";
        }
        else
        {
            ViewState["at"] = "Absent";
        }

        string[] strfld = new string[4];
        string[] strval = new string[4];

        strfld[0] = "sid";
        strval[0] = lblid.Text;

        strfld[1] = "class";
        strval[1] = lblclass.Text;

        strfld[2] = "date";
        strval[2] = lbldate.Text;

        strfld[3] = "status";
        strval[3] = ViewState["at"].ToString();


        cnf.insertData("attendance", strfld, strval);
        Response.Write("<script>alert('Record Added Successfully');</script>");
        Response.Redirect("attendence.aspx");

    }
    protected void ddlatt_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlatt.SelectedValue == "--- Select ---")
        {
            btnOk.Visible = false;
        }
        else
        {
            btnOk.Visible = true;
        }
    }
    protected void ddlall_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlall.SelectedValue == "--- Select ---")
        {
            btnSubmit.Visible = false;
        }
        else
        {
            btnSubmit.Visible = true;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (ddlall.SelectedValue == "Present")
        {
            ViewState["at"] = "Present";
        }
        else
        {
            ViewState["at"] = "Absent";
        }

        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected == true)
            {
                String mon = System.DateTime.Now.ToString("MMM");
                String year = System.DateTime.Now.Year.ToString();

                String day = CheckBoxList1.Items[i].Text;

                String comp = day + "-" + mon + "-" + year;

                string[] strfld = new string[4];
                string[] strval = new string[4];

                strfld[0] = "sid";
                strval[0] = lblid.Text;

                strfld[1] = "class";
                strval[1] = lblclass.Text;

                strfld[2] = "date";
                strval[2] = comp;

                strfld[3] = "status";
                strval[3] = ViewState["at"].ToString();


                cnf.insertData("attendance", strfld, strval);
            }
        }

        Response.Redirect("attendence.aspx");
    }
}