using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for db_conn
/// </summary>
public class db_conn
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\project\\Tours\\travel.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    SqlCommand cmd = new SqlCommand();
    public void modify(string q)
    {

        cmd.CommandText = q;
        cmd.Connection = cn;
        cn.Open();
        
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    public DataSet select(string q)
    {
        DataSet ds = new DataSet();

        cmd.CommandText = q;
        cmd.Connection = cn;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        cn.Open();
        cmd.ExecuteNonQuery();
        da.Fill(ds);
        cn.Close();
        return ds;
    }
    public int getid(string q)
    {
        cmd.CommandText = q;
        cmd.Connection = cn;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        cn.Open();
        int id = (int)cmd.ExecuteNonQuery();
        cn.Close();
        return id;
    }
}