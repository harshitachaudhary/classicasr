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
              

                grdcategory.DataSource = bind_grid();
                grdcategory.DataBind();
                
            }
            else { Response.Redirect("../login/Default.aspx"); }
        }
    }
    public DataTable bind_grid()
    {
        SqlCommand cmd = new SqlCommand("select *from tblblog", con);
        cmd.CommandType = CommandType.Text;
       // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    protected void ntnAddCategory_Click(object sender, EventArgs e)
    {
        try
        {
            ClassDate s = new ClassDate();
            string datee = s.date();
            //==== Get file name without its extension.
            string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
            string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
            fileNameWithoutExtension1 = datee + fileNameWithoutExtension1;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
            strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblblog(blogservice,blogname,authorname,blogdate,blogmonth,discription,image) values(@blogservice,@blogname,@authorname,@blogdate,@blogmonth,@discription,@image)", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@blogservice", txtblogservice.Text);
            cmd.Parameters.AddWithValue("@blogname", txtblogname.Text);
            cmd.Parameters.AddWithValue("@authorname", txtauthorname.Text);
            cmd.Parameters.AddWithValue("@blogdate", txtblogdate.Text);
            cmd.Parameters.AddWithValue("@blogmonth", txtblogmonth.Text);
            cmd.Parameters.AddWithValue("@discription", txtdiscription.Content);
            cmd.Parameters.AddWithValue("@image", strfile1);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Successfully Submited');location.href='blog.aspx'", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }
    protected void lb_Edit_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        string str = grdcategory.DataKeys[gvrow.RowIndex].Value.ToString();
        lblcatcode.Text = str;

        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from tblblog where id=@id", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", lblcatcode.Text.Trim());
            cmd.Parameters.AddWithValue("@var", 3);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Successfully Deleted');location.href='blog.aspx'", true);
            }

        }
        catch { }
        finally { con.Close(); }
        // this.ModalPopupExtender1.Show();

    }
   
}