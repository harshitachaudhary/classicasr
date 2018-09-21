using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class galleryvideo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RptVideos.DataSource = bind();
            RptVideos.DataBind();
           
        }
    }

    public DataTable bind()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblgallery_video", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}