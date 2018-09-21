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
    DataTable dt = new DataTable();
    string strfile1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["classic"] != null)
            {
               

                Image1.ImageUrl = all.showpagecontent("projectimg1");

                dt = all.showpagecontentP("project1");
                if(dt.Rows.Count > 0)
                {
                    txtheading1.Text = dt.Rows[0]["content"].ToString();
                    txtheading2.Text = dt.Rows[0]["heading1"].ToString();
                }
            }
            else { Response.Redirect("../login/Default.aspx"); }
            
          
        }
    }
  
    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_tblallpages", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@typee", "project1");
            cmd.Parameters.AddWithValue("@content", txtheading1.Text);
            cmd.Parameters.AddWithValue("@heading1", txtheading2.Text);          
            int i = cmd.ExecuteNonQuery();
            if(i > 0)
            {
                image();
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Successfully Updated');", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }

    public void image()
    {
        ClassDate s = new ClassDate();
        string datee = s.date();

        if (FileUpload1.HasFile)
        {
            //==== Get file name without its extension.
            string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
            string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
            fileNameWithoutExtension1 = datee + fileNameWithoutExtension1;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
            strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;
        }
        else
        { strfile1 = Image1.ImageUrl; }


        SqlCommand cmd = new SqlCommand("proc_tblallpages", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@typee", "projectimg1");
        cmd.Parameters.AddWithValue("@content", strfile1);
        cmd.ExecuteNonQuery();
        Image1.ImageUrl = all.showpagecontent("projectimg1");
       
    }
   
} 