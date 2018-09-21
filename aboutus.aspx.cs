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

public partial class aboutus : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            rptaboutimage.DataSource = all.showpagecontentP("aboutimage");
            rptaboutimage.DataBind();

            rptteam.DataSource = bind_team();
            rptteam.DataBind();


            show_home_about();


            DataTable dt = new DataTable();
            dt = all.showpagecontentP("missionvision");
            if (dt.Rows.Count > 0)
            {

                lblmission.Text = dt.Rows[0]["content"].ToString();
                lblvision.Text = dt.Rows[0]["heading1"].ToString();

            }
        }          

    }
    public void show_home_about()
    {

        SqlCommand cmd = new SqlCommand("select *from tblhome_about", con);
        cmd.CommandType = CommandType.Text;

        
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lbldiscription.Text = dt.Rows[0]["discription"].ToString();
            lblheading1.Text = dt.Rows[0]["heading1"].ToString();
            lblheading2.Text = dt.Rows[0]["heading2"].ToString();
            lblheading3.Text = dt.Rows[0]["heading3"].ToString();
            lblheading4.Text = dt.Rows[0]["heading4"].ToString();
            lblheading5.Text = dt.Rows[0]["heading5"].ToString();
            lblheading6.Text = dt.Rows[0]["heading6"].ToString();

        }

    }
    public DataTable bind_team()
    {
        SqlCommand cmd = new SqlCommand("select *from tblteam", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }


  

}