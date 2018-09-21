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

public partial class testi : System.Web.UI.Page
{

    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rpttestimonial.DataSource = testimonial();
            rpttestimonial.DataBind();

            rpttestimonialleft.DataSource = testimonialleft();
            rpttestimonialleft.DataBind();

            rpttestimonialright.DataSource = testimonialright();
            rpttestimonialright.DataBind();


        }


    }
    public DataTable testimonial()
    {
        SqlCommand cmd = new SqlCommand("select *from  tbltesti", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable testimonialleft()
    {
        SqlCommand cmd = new SqlCommand("select Top 50 percent  * from  tbltesti order by id desc", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable testimonialright()
    {
        SqlCommand cmd = new SqlCommand("select Top 50 percent  * from  tbltesti order by id asc", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

}