using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.IO;

public partial class weddservice : System.Web.UI.Page
{

    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptplans.DataSource = bind_plan();
            rptplans.DataBind();
        }

        if (Request.QueryString["service-name"] != null)
        {
            show_service_details(Request.QueryString["service-name"].ToString());
        }


    }

    public void show_service_details(string serviceName)
    {

        SqlDataAdapter da = new SqlDataAdapter("select service_name,image,disc,image1,image2,image3,image4,heading1  from tblservices where service_name='" + serviceName + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
           
           
            image1.ImageUrl = dt.Rows[0]["image"].ToString();
            image2.ImageUrl = dt.Rows[0]["image1"].ToString();
            image3.ImageUrl = dt.Rows[0]["image2"].ToString();
            image4.ImageUrl = dt.Rows[0]["image3"].ToString();
            image5.ImageUrl = dt.Rows[0]["image4"].ToString();

            lblheading.Text = dt.Rows[0]["heading1"].ToString();

            lblmaincontent.Text = dt.Rows[0]["disc"].ToString();
            lblservicename.Text = dt.Rows[0]["service_name"].ToString();
            lblservicename1.Text = dt.Rows[0]["service_name"].ToString();
            lblservicename2.Text = dt.Rows[0]["service_name"].ToString();
        }
    }


    public DataTable bind_plan()
    {
        SqlCommand cmd = new SqlCommand("select *from tblplans", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }




    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        DateTime dd = DateTime.UtcNow.AddHours(5).AddMinutes(30);

        SqlCommand cmd = new SqlCommand("insert into tblappointment(name,email,phone,services,address,date)values(@name,@email,@phone,@services,@address,@date)", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@name", txtname.Value);
        cmd.Parameters.AddWithValue("@email", txtemail.Value);

        cmd.Parameters.AddWithValue("@phone", txtphone.Value);
        cmd.Parameters.AddWithValue("@services", ddlseelectservice.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@address", txtaddress.Value);
        cmd.Parameters.AddWithValue("@date", dd);


        try
        {
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Successfully Submited');", true);
                txtname.Value = "";
                txtemail.Value = "";
               
                ddlseelectservice.SelectedValue = "0";
                txtphone.Value = "";
              
            }
        }
        catch { }
        finally { con.Close(); con.Dispose(); }
    
    }
}