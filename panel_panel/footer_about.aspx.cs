﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.IO;

public partial class nyksi_panel_Upload_Main_Product : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dt = new DataTable();
            dt = all.showpagecontentP("footer_about");
            if(dt.Rows.Count >0)
            {
                txtdiscription.Content = dt.Rows[0]["content"].ToString();
                txtheading1.Text = dt.Rows[0]["heading1"].ToString();
              
            }
            
        }
    }
  
    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_tblallpages", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@typee", "footer_about");
            cmd.Parameters.AddWithValue("@heading1", txtheading1.Text);
            cmd.Parameters.AddWithValue("@content", txtdiscription.Content);
            int i = cmd.ExecuteNonQuery();
            if(i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Successfully Updated');", true);
            }
        }
    catch { }
      finally { 
    con.Close();
}
    }


   
} 