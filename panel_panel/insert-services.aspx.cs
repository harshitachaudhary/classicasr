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

            }
            else { Response.Redirect("../login/Default.aspx"); }
        }
    }

    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {
             ClassDate s = new ClassDate();
            string date = s.ToString();
            //==== Get file name without its extension.
            string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
            string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
            fileNameWithoutExtension1 = date + fileNameWithoutExtension1;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
            strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;


            //==== Get file name without its extension.
            string fileNameWithoutExtension2 = Path.GetFileNameWithoutExtension(FileUpload2.FileName);
            string fileExtension2 = Path.GetExtension(FileUpload2.FileName);
            fileNameWithoutExtension2 = date + fileNameWithoutExtension2;
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension2 + fileExtension2));
            strfile2 = "~/productimg/" + fileNameWithoutExtension2 + fileExtension2;


            //==== Get file name without its extension.
            string fileNameWithoutExtension3 = Path.GetFileNameWithoutExtension(FileUpload3.FileName);
            string fileExtension3 = Path.GetExtension(FileUpload3.FileName);
            fileNameWithoutExtension3 = date + fileNameWithoutExtension3;
            FileUpload3.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension3 + fileExtension3));
            strfile3 = "~/productimg/" + fileNameWithoutExtension3 + fileExtension3;


            //==== Get file name without its extension.
            string fileNameWithoutExtension4 = Path.GetFileNameWithoutExtension(FileUpload4.FileName);
            string fileExtension4 = Path.GetExtension(FileUpload4.FileName);
            fileNameWithoutExtension4 = date + fileNameWithoutExtension4;
            FileUpload4.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension4 + fileExtension4));
            strfile4 = "~/productimg/" + fileNameWithoutExtension4 + fileExtension4;



            //==== Get file name without its extension.
            string fileNameWithoutExtension5 = Path.GetFileNameWithoutExtension(FileUpload5.FileName);
            string fileExtension5 = Path.GetExtension(FileUpload5.FileName);
            fileNameWithoutExtension5 = date + fileNameWithoutExtension5;
            FileUpload5.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension5 + fileExtension5));
            strfile5 = "~/productimg/" + fileNameWithoutExtension5 + fileExtension5;


         
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblservices (service_name,image,short_disc,disc,image2,image3,image4,heading1,image1)values(@service_name,@image,@short_disc,@disc,@image2,@image3,@image4,@heading1,@image1) ", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@service_name",txtsrvname.Text );
            cmd.Parameters.AddWithValue("@short_disc",Editorshrtcontent.Content );
            cmd.Parameters.AddWithValue("@image",strfile1 );
            cmd.Parameters.AddWithValue("@disc",Editorservccontent.Content );
            
            cmd.Parameters.AddWithValue("@image2", strfile3);
            cmd.Parameters.AddWithValue("@image3", strfile4);
            cmd.Parameters.AddWithValue("@image4", strfile5);
            cmd.Parameters.AddWithValue("@heading1", txtheading1.Text);
            cmd.Parameters.AddWithValue("@image1", strfile2);
          
            int i = cmd.ExecuteNonQuery();
            if(i > 0)
            {
               
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Successfully insert');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Some Error Occured!!!');", true);


            }

            txtsrvname.Text = null;
            Editorshrtcontent.Content = null;
            Editorservccontent.Content = null;
          


        }
        catch { }
        finally { con.Close(); }
    }

 

}