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

public partial class panel_panel_aboutfeatures : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    DataTable dt = new DataTable();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["classic"] != null)
            {
                topic();

            }
            else { Response.Redirect("../login/Default.aspx"); }


        }
    }
    public void Show_Feature(string topic)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select heading1,subhead1,subhead2,heading2,subhead3,subhead4,subhead5,heading3,heading4,heading5,heading6,heading7,heading8,planname,price from tblplans where topic=@topic", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@topic", topic);
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.Read())
        {
           
            txtheading1.Text = drr["heading1"].ToString();
            txtsubhead1.Text = drr["subhead1"].ToString();
            txtsubhead2.Text = drr["subhead2"].ToString();
            txtheading2.Text = drr["heading2"].ToString();
            txtsubhead3.Text = drr["subhead3"].ToString();
            txtsubhead4.Text = drr["subhead4"].ToString();
            txtsubhead5.Text = drr["subhead5"].ToString();
            txtheading3.Text = drr["heading3"].ToString();
            txtheading4.Text = drr["heading4"].ToString();
            txtheading5.Text = drr["heading5"].ToString();
            txtheading6.Text = drr["heading6"].ToString();
            txtheading7.Text = drr["heading7"].ToString();
            txtheading8.Text = drr["heading8"].ToString();
            txtplanname.Text = drr["planname"].ToString();
            txtprice.Text = drr["price"].ToString();
           
        }
        con.Close();
    }
    public void topic()
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select id,topic from tblplans", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddltopic.DataSource = dt;
        ddltopic.DataTextField = "topic";
        ddltopic.DataValueField = "id";
        ddltopic.DataBind();
        ddltopic.Items.Insert(0, "----Pls. Choose Plan Here---");

    }

    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update tblplans set heading1=@heading1,subhead1=@subhead1,subhead2=@subhead2,heading2=@heading2,subhead3=@subhead3,subhead4=@subhead4,subhead5=@subhead5,heading3=@heading3,heading4=@heading4,heading5=@heading5,heading6=@heading6,heading7=@heading7,heading8=@heading8,planname=@planname,price=@price where topic=@topic", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@topic", ddltopic.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@heading1", txtheading1.Text);
            cmd.Parameters.AddWithValue("@subhead1", txtsubhead1.Text);
            cmd.Parameters.AddWithValue("@subhead2", txtsubhead2.Text);
            cmd.Parameters.AddWithValue("@heading2", txtheading2.Text);
            cmd.Parameters.AddWithValue("@subhead3", txtsubhead3.Text);
            cmd.Parameters.AddWithValue("@subhead4", txtsubhead4.Text);
            cmd.Parameters.AddWithValue("@subhead5", txtsubhead5.Text);
            cmd.Parameters.AddWithValue("@heading3", txtheading3.Text);
            cmd.Parameters.AddWithValue("@heading4", txtheading4.Text);
            cmd.Parameters.AddWithValue("@heading5", txtheading5.Text);
            cmd.Parameters.AddWithValue("@heading6", txtheading6.Text);
            cmd.Parameters.AddWithValue("@heading7", txtheading7.Text);
            cmd.Parameters.AddWithValue("@heading8", txtheading8.Text);
            cmd.Parameters.AddWithValue("@planname", txtplanname.Text);
            cmd.Parameters.AddWithValue("@price", txtprice.Text);
           
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Successfully Updated');", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }





    protected void ddltopic_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddltopic.SelectedIndex > 0)
        {
            Show_Feature(ddltopic.SelectedItem.ToString());
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Choose Plan First');", true);
        }
    }
}