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
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["classic"] != null)
            {
                show_home_about();
            }
            
        }
    }



    public void show_home_about()
    {

        SqlCommand cmd = new SqlCommand("select *from tblhome_about", con);
        cmd.CommandType = CommandType.Text;

        // cmd.Parameters.AddWithValue("@var",5);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            txtdiscription.Content = dt.Rows[0]["discription"].ToString();
            txtheading1.Text = dt.Rows[0]["heading1"].ToString();
            txtheading2.Text = dt.Rows[0]["heading2"].ToString();
            txtheading3.Text = dt.Rows[0]["heading3"].ToString();
            txtheading4.Text = dt.Rows[0]["heading4"].ToString();
            txtheading5.Text = dt.Rows[0]["heading5"].ToString();
            txtheading6.Text = dt.Rows[0]["heading6"].ToString();
        }

    }
    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update  tblhome_about set heading1=@heading1,heading2=@heading2,heading3=@heading3,heading4=@heading4,heading5=@heading5,discription=@discription,heading6=@heading6 where id=1", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", 1);
            cmd.Parameters.AddWithValue("@heading1", txtheading1.Text);
            cmd.Parameters.AddWithValue("@heading2", txtheading2.Text);
            cmd.Parameters.AddWithValue("@heading3", txtheading3.Text);
            cmd.Parameters.AddWithValue("@heading4", txtheading4.Text);
            cmd.Parameters.AddWithValue("@heading5", txtheading5.Text);
            cmd.Parameters.AddWithValue("@heading6", txtheading6.Text);
            cmd.Parameters.AddWithValue("@discription", txtdiscription.Content);
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