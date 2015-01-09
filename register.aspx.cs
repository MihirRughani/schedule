using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    ConfigClass cnf = new ConfigClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_reg_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            String abc = System.DateTime.Now.Millisecond.ToString() + "_" + txt_name.Text;
            String fnm = abc + "_" + FileUpload1.FileName.ToString();
            String fname = "~/upload/" + fnm;
            FileUpload1.SaveAs(Server.MapPath("~\\upload\\" + fnm));

            String st = "Y";

            string[] strfld = new string[6];
            string[] strval = new string[6];

            strfld[0] = "name";
            strval[0] = txt_name.Text;

            strfld[1] = "class";
            strval[1] = ddl_class.SelectedValue.ToString();

            strfld[2] = "email";
            strval[2] = txt_email.Text;

            strfld[3] = "password";
            strval[3] = txt_pass.Text;

            strfld[4] = "simg";
            strval[4] = fname;

            strfld[5] = "status";
            strval[5] = st.ToString();


            cnf.insertData("Register", strfld, strval);
            Response.Write("<script>alert('Record Added Successfully');</script>");
            Response.Redirect("attendence.aspx");
        }
    }
}