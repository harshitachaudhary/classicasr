using System;
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
    string strfile2 = "";
    string strfile3 = "";
    string strfile4 = "";
    string strfile5 = "";
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["classic"] != null)
            {
                selectservice();
            }
            else { Response.Redirect("../login/Default.aspx"); }
        }
    }



    public void selectservice()
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select id,service_name from tblservices", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddlservice.DataSource = dt;
        ddlservice.DataTextField = "service_name";
        ddlservice.DataValueField = "id";
        ddlservice.DataBind();
        ddlservice.Items.Insert(0, "----Pls. Choose Service Here---");

    }


    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                ClassDate s = new ClassDate();
                string datee = s.date();
                //==== Get file name without its extension.
                string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
                string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
                fileNameWithoutExtension1 = datee + fileNameWithoutExtension1;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
                strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;
            }

            else
            {
                strfile1 = Imageshort.ImageUrl;
            }

            if (FileUpload2.HasFile)
            {
                ClassDate s = new ClassDate();
                string datee = s.date();
                //==== Get file name without its extension.
                string fileNameWithoutExtension2 = Path.GetFileNameWithoutExtension(FileUpload2.FileName);
                string fileExtension2 = Path.GetExtension(FileUpload2.FileName);
                fileNameWithoutExtension2 = datee + fileNameWithoutExtension2;
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension2 + fileExtension2));
                strfile2 = "~/productimg/" + fileNameWithoutExtension2 + fileExtension2;
            }

            else
            {
                strfile2 = Image1.ImageUrl;
            }

            if (FileUpload3.HasFile)
            {
                ClassDate s = new ClassDate();
                string datee = s.date();
                //==== Get file name without its extension.
                string fileNameWithoutExtension3 = Path.GetFileNameWithoutExtension(FileUpload3.FileName);
                string fileExtension3 = Path.GetExtension(FileUpload3.FileName);
                fileNameWithoutExtension3 = datee + fileNameWithoutExtension3;
                FileUpload3.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension3 + fileExtension3));
                strfile3 = "~/productimg/" + fileNameWithoutExtension3 + fileExtension3;
            }

            else
            {
                strfile3 = Image2.ImageUrl;
            }

            if (FileUpload4.HasFile)
            {
                ClassDate s = new ClassDate();
                string datee = s.date();
                //==== Get file name without its extension.
                string fileNameWithoutExtension4 = Path.GetFileNameWithoutExtension(FileUpload4.FileName);
                string fileExtension4 = Path.GetExtension(FileUpload4.FileName);
                fileNameWithoutExtension4 = datee + fileNameWithoutExtension4;
                FileUpload4.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension4 + fileExtension4));
                strfile4 = "~/productimg/" + fileNameWithoutExtension4 + fileExtension4;
            }

            else
            {
                strfile4 = Image3.ImageUrl;
            }

            if (FileUpload5.HasFile)
            {
                ClassDate s = new ClassDate();
                string datee = s.date();
                //==== Get file name without its extension.
                string fileNameWithoutExtension5 = Path.GetFileNameWithoutExtension(FileUpload5.FileName);
                string fileExtension5 = Path.GetExtension(FileUpload5.FileName);
                fileNameWithoutExtension5 = datee + fileNameWithoutExtension5;
                FileUpload5.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension5 + fileExtension5));
                strfile5 = "~/productimg/" + fileNameWithoutExtension5 + fileExtension5;
            }

            else
            {
                strfile5 = Image4.ImageUrl;
            }


            con.Open();
            SqlCommand cmd = new SqlCommand("update tblservices  set service_name=@service_name,image=@image,short_disc=@short_disc,disc=@disc,image2=@image2,image3=@image3,image4=@image4,heading1=@heading1,image1=@image1 where service_name=@service_name ", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@service_name", ddlservice.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@short_disc", Editorshrtcontent.Content);
            cmd.Parameters.AddWithValue("@image", strfile1);
            cmd.Parameters.AddWithValue("@disc", Editorservccontent.Content);
            cmd.Parameters.AddWithValue("@heading1",txtheading1.Text);
           
            cmd.Parameters.AddWithValue("@image2", strfile3);
            cmd.Parameters.AddWithValue("@image3", strfile4);
            cmd.Parameters.AddWithValue("@image4", strfile5);
            cmd.Parameters.AddWithValue("@image1", strfile2);
            
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Successfully insert');", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }

    public void show_service(string service_name)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tblservices where service_name=@service_name", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@service_name", service_name);
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.Read())
        {
            Editorshrtcontent.Content = drr["short_disc"].ToString();
            Imageshort.ImageUrl = drr["image"].ToString();
            Editorservccontent.Content = drr["disc"].ToString();
            txtheading1.Text = drr["heading1"].ToString();
          
            Image2.ImageUrl = drr["image2"].ToString();
            Image3.ImageUrl = drr["image3"].ToString();
            Image4.ImageUrl = drr["image4"].ToString();
            Image1.ImageUrl = drr["image1"].ToString();
            
            
        }

        con.Close();

    }

    protected void ddlservice_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlservice.SelectedIndex > 0)
        {
            show_service(ddlservice.SelectedItem.ToString());
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Choose Service First');", true);
        }
    }
}