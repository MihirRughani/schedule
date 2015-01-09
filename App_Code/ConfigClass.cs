using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Drawing;
using System.IO;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
/// <summary>
/// Summary description for ConfigClass
/// </summary>
public class ConfigClass
{
    #region UserInformation
    SqlConnection sqlcon;
    SqlCommand sqlcom;
    SqlDataAdapter sqlda;
    DataSet ds;
    DataTable dt;
    string strQry;
    #endregion

    public SqlConnection getConn()
    {
        string MyConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\HUNI.mdf;Integrated Security=True;User Instance=True";
        sqlcon = new SqlConnection(MyConString);
        return sqlcon;
    }

    public DataTable DtTable(string str)
    {
        sqlcon = getConn();
        sqlda = new SqlDataAdapter(str, sqlcon);
        dt = new DataTable();
        sqlda.Fill(dt);
        return dt;
    }

    public void doExecute(string str)
    {
        sqlcon = getConn();
        sqlcon.Open();
        sqlcom = new SqlCommand(str, sqlcon);
        sqlcom.ExecuteNonQuery();
        sqlcon.Close();
    }

    public string insertData(string tblname, string[] tblfld, string[] tblval)
    {
        int tf, tv;
        string str;

        str = "INSERT INTO " + tblname + " (";

        for (tf = 0; tf < tblfld.Length; tf++)
        {
            str += tblfld[tf];

            if (tf != tblfld.Length - 1)
            {
                str += ",";
            }

        }

        str += ") values (";

        for (tv = 0; tv < tblval.Length; tv++)
        {
            str += "'" + tblval[tv] + "'";
            if (tv != tblval.Length - 1)
            {
                str += ",";
            }
        }
        str += ")";

        this.doExecute(str);
        return str;
    }

    public string updateData(string tblname, string[] tblfld, string[] tblval, string whr)
    {
        int tf;
        string str;

        str = "UPDATE " + tblname + " SET ";

        for (tf = 0; tf < tblfld.Length; tf++)
        {
            str += tblfld[tf];

            str += "='";

            str += tblval[tf];

            str += "'";

            if (tf != tblfld.Length - 1)
            {
                str += ",";
            }
        }

        str += " WHERE " + whr;

        this.doExecute(str);
        return str;
    }

    public string deleteData(string tblname, string whr)
    {
        string str = "DELETE FROM " + tblname + " WHERE " + whr;
        this.doExecute(str);
        return str;
    }

}