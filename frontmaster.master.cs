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
public partial class frontmaster : System.Web.UI.MasterPage
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            rptheaderlogo.DataSource = all.showpagecontentP("headerlogo");
            rptheaderlogo.DataBind();

            rptfooterlogo.DataSource = all.showpagecontentP("footerlogo");
            rptfooterlogo.DataBind();


            rptservicename.DataSource = bind_servicename();
            rptservicename.DataBind();

            rptservicename1.DataSource = bind_servicename1();
            rptservicename1.DataBind();


            DataTable dt = new DataTable();
            dt = all.showpagecontentP("address");
            if (dt.Rows.Count > 0)
            {
                
                lbladdress1.Text = dt.Rows[0]["content"].ToString();
                lblphone1.Text = dt.Rows[0]["heading1"].ToString();
                lblemail1.Text = dt.Rows[0]["heading2"].ToString();


                lbldiscription.Text = dt.Rows[0]["content"].ToString();
                lblheading1.Text = dt.Rows[0]["heading1"].ToString();
            }

            dt = all.showpagecontentP("header");
            if (dt.Rows.Count > 0)
            {

                lbladdress.Text = dt.Rows[0]["content"].ToString();
                lblphone.Text = dt.Rows[0]["heading1"].ToString();
                lblemail.Text = dt.Rows[0]["heading2"].ToString();

            }


            dt = all.showpagecontentP("footer_about");
            if (dt.Rows.Count > 0)
            {
               


                lbldiscription.Text = dt.Rows[0]["content"].ToString();
                lblheading1.Text = dt.Rows[0]["heading1"].ToString();
            }

            dt = all.showpagecontentP("call_note");
            if (dt.Rows.Count > 0)
            {



                lblhead1.Text = dt.Rows[0]["heading1"].ToString();
                lblhead2.Text = dt.Rows[0]["heading2"].ToString();
                lblnumber.Text = dt.Rows[0]["content"].ToString();
            }

        }

    }



    public DataTable bind_servicename()
    {
        SqlCommand cmd = new SqlCommand("select service_name from tblservices", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;

    }

    public DataTable bind_servicename1()
    {
        SqlCommand cmd = new SqlCommand("select service_name from tblservices", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
}
