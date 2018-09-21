using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class nyksi_panel_banner : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    string strfile1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["classic"] != null)
            {
               

                if (Request.QueryString["id_x"] != null)
                {
                    show_ALL(Request.QueryString["id_x"].ToString());
                }
            }
            else { Response.Redirect("../login/Default.aspx"); }
        }
    }
    public void show_ALL(string id)
    {

        SqlCommand cmd = new SqlCommand("select *from tblblog where id=@id", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@id",id);
       // cmd.Parameters.AddWithValue("@var",5);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count > 0)
        {
            txtblogservice.Text = dt.Rows[0]["blogservice"].ToString();
            txtblogname.Text = dt.Rows[0]["blogname"].ToString();
            txtauthorname.Text = dt.Rows[0]["authorname"].ToString();
            txtblogdate.Text = dt.Rows[0]["blogdate"].ToString();
            txtblogmonth.Text = dt.Rows[0]["blogmonth"].ToString();
            txtdiscription.Content = dt.Rows[0]["discription"].ToString();
            Image1.ImageUrl = dt.Rows[0]["image"].ToString();
        }
        
    }
    
    protected void ntnAddCategory_Click(object sender, EventArgs e)
    {
        //try
        //{
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
            else { strfile1 = Image1.ImageUrl; }

            con.Open();
            SqlCommand cmd = new SqlCommand("update tblblog set blogservice=@blogservice,blogname=@blogname,authorname=@authorname,blogdate=@blogdate,blogmonth=@blogmonth,discription=@discription,image=@image where id=@id", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@blogservice", txtblogservice.Text);
            cmd.Parameters.AddWithValue("@blogname", txtblogname.Text);
            cmd.Parameters.AddWithValue("@authorname", txtauthorname.Text);
            cmd.Parameters.AddWithValue("@blogdate", txtblogdate.Text);
            cmd.Parameters.AddWithValue("@blogmonth", txtblogmonth.Text);
            cmd.Parameters.AddWithValue("@discription", txtdiscription.Content);
            cmd.Parameters.AddWithValue("@image", strfile1);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["id_x"].ToString());
            cmd.Parameters.AddWithValue("@var", 4);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Successfully Updated');location.href='blog.aspx?id_x=" + Request.QueryString["id_x"].ToString() + "'", true);
            }
        //}
        //catch { }
        //finally { con.Close(); }
    }
  

  
}