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
using System.Drawing;

public partial class nyksi_panel_Upload_Main_Product : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    string strfile1 = "";
    string strfile2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            
           
            BindEmployeeDetails();
        }
    }
  
  

    protected void BindEmployeeDetails()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from tblgallery_photo", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvDetails.DataSource = ds;
            gvDetails.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            gvDetails.DataSource = ds;
            gvDetails.DataBind();
            int columncount = gvDetails.Rows[0].Cells.Count;
            gvDetails.Rows[0].Cells.Clear();
            gvDetails.Rows[0].Cells.Add(new TableCell());
            gvDetails.Rows[0].Cells[0].ColumnSpan = columncount;
            gvDetails.Rows[0].Cells[0].Text = "No Records Found";
        }
    }
    protected void gvDetails_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvDetails.EditIndex = e.NewEditIndex;
        BindEmployeeDetails();
    }
    protected void gvDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int userid = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Value.ToString());
       // string username = gvDetails.DataKeys[e.RowIndex].Values["UserName"].ToString();

        Label lblimg1 = (Label)gvDetails.Rows[e.RowIndex].FindControl("lblimg");

        FileUpload FileUpload1 = (FileUpload)gvDetails.Rows[e.RowIndex].FindControl("fileuploadedit");


        






        ClassDate s = new ClassDate();

       
        string datee = s.date();
        if (FileUpload1.HasFile == true)
        {
            //==== Get file name without its extension.
            string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
            string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
            fileNameWithoutExtension1 = datee + fileNameWithoutExtension1;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
            strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;

        }
        else { strfile1 = lblimg1.Text; }
       



        con.Open();
        SqlCommand cmd = new SqlCommand("proc_tblgallery_photo", con);
        cmd.CommandType = CommandType.StoredProcedure;
        
        cmd.Parameters.AddWithValue("@image", strfile1);
       

        cmd.Parameters.AddWithValue("@id", userid);
        cmd.Parameters.AddWithValue("@var", "upda");
        cmd.ExecuteNonQuery();
        con.Close();
        lblresult.ForeColor = Color.Green;
        lblresult.Text = userid + " Details Updated successfully";
        gvDetails.EditIndex = -1;
        BindEmployeeDetails();
    }
    protected void gvDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvDetails.EditIndex = -1;
        BindEmployeeDetails();
    }
    protected void gvDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int userid = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Values["id"].ToString());
       // string username = gvDetails.DataKeys[e.RowIndex].Values["UserName"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("proc_tblgallery_photo", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", userid);
        cmd.Parameters.AddWithValue("@var", "del");
        int result = cmd.ExecuteNonQuery();
        con.Close();
        if (result == 1)
        {
            BindEmployeeDetails();
            lblresult.ForeColor = Color.Red;
            lblresult.Text = userid + " details deleted successfully";
        }
    }
    protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("AddNew"))
        {
            
            FileUpload FileUpload1 = (FileUpload)gvDetails.FooterRow.FindControl("fileuploadfooter");


            ClassDate s = new ClassDate();
            string datee = s.date();
            //==== Get file name without its extension.
            string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
            string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
            fileNameWithoutExtension1 = datee + fileNameWithoutExtension1;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
            strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;




            con.Open();
            SqlCommand cmd = new SqlCommand("proc_tblgallery_photo", con);
            cmd.CommandType = CommandType.StoredProcedure;
            
            cmd.Parameters.AddWithValue("@image",strfile1);
           
            cmd.Parameters.AddWithValue("@var","ins");
           
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                BindEmployeeDetails();
                lblresult.ForeColor = Color.Green;
                lblresult.Text =  FileUpload1 + " Details inserted successfully";
            }
            else
            {
                lblresult.ForeColor = Color.Red;
                lblresult.Text = FileUpload1 + " Details not inserted";
            }
        }
    }
 
}