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

public partial class _Default : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            rptrerbanner.DataSource = bind_Banner();
            rptrerbanner.DataBind();

            rpttestimonial.DataSource = testimonial();
            rpttestimonial.DataBind();

            rptfeatures.DataSource = bind_features();
            rptfeatures.DataBind();

            rpthome_blog.DataSource = bind_Blog();
            rpthome_blog.DataBind();

            rptproject1.DataSource = all.showpagecontentP("projectimg1");
            rptproject1.DataBind();

            rptproject2.DataSource = all.showpagecontentP("projectimg2");
            rptproject2.DataBind();

            rptproject3.DataSource = all.showpagecontentP("projectimg3");
            rptproject3.DataBind();

            rptproject4.DataSource = all.showpagecontentP("projectimg4");
            rptproject4.DataBind();

            rptservices.DataSource = bind_Services();
            rptservices.DataBind();

            show_home_about();



            rptaboutimage.DataSource = all.showpagecontentP("aboutimage");
            rptaboutimage.DataBind();

            DataTable dt = new DataTable();
            dt = all.showpagecontentP("experiance_year");
            if (dt.Rows.Count > 0)
            {

                lblexperiance.Text = dt.Rows[0]["content"].ToString();
                lblemailid.Text = dt.Rows[0]["heading1"].ToString();

            }

            dt = all.showpagecontentP("project1");
            if (dt.Rows.Count > 0)
            {
                lblproject1.Text = dt.Rows[0]["content"].ToString();
                lblproject11.Text = dt.Rows[0]["heading1"].ToString();

            }

            dt = all.showpagecontentP("project2");
            if (dt.Rows.Count > 0)
            {
                lblproject2.Text = dt.Rows[0]["content"].ToString();
                lblproject21.Text = dt.Rows[0]["heading1"].ToString();

            }

            dt = all.showpagecontentP("project3");
            if (dt.Rows.Count > 0)
            {
                lblproject3.Text = dt.Rows[0]["content"].ToString();
                lblproject31.Text = dt.Rows[0]["heading1"].ToString();

            }

            dt = all.showpagecontentP("project4");
            if (dt.Rows.Count > 0)
            {
                lblproject4.Text = dt.Rows[0]["content"].ToString();
                lblproject41.Text = dt.Rows[0]["heading1"].ToString();

            }

        }

    }

    public DataTable bind_Banner()
    {
        SqlCommand cmd = new SqlCommand("select *from tblbanner", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable bind_Blog()
    {
        SqlCommand cmd = new SqlCommand("select  top 3 * from tblblog", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable bind_Services()
    {
        SqlCommand cmd = new SqlCommand("select Top 3 * from tblservices", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
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
            lbldiscription.Text = dt.Rows[0]["discription"].ToString();
            lblheading1.Text = dt.Rows[0]["heading1"].ToString();
            lblheading2.Text = dt.Rows[0]["heading2"].ToString();
            lblheading3.Text = dt.Rows[0]["heading3"].ToString();
            lblheading4.Text = dt.Rows[0]["heading4"].ToString();
            lblheading5.Text = dt.Rows[0]["heading5"].ToString();

        }

    }

    public DataTable testimonial()
    {
        SqlCommand cmd = new SqlCommand("select *from  tbltesti", con);
        cmd.CommandType = CommandType.Text;
        // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable bind_features()
    {
        SqlCommand cmd = new SqlCommand("select * from tblfeatures", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
}