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

public partial class contact : System.Web.UI.Page
{
   
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            dt = all.showpagecontentP("address");
            if (dt.Rows.Count > 0)
            {
                lbladdress.Text = dt.Rows[0]["content"].ToString();
                lblphone.Text = dt.Rows[0]["heading1"].ToString();
                lblemail.Text = dt.Rows[0]["heading2"].ToString();
            }
        }


}
    protected void btnsubmit_Click(object sender, EventArgs e)
{

    DateTime dd = DateTime.UtcNow.AddHours(5).AddMinutes(30);

    SqlCommand cmd = new SqlCommand("insert into tblcontact(name,email,phone,subject,message,date)values(@name,@email,@phone,@subject,@message,@date)", con);
    cmd.CommandType = CommandType.Text;
    cmd.Parameters.AddWithValue("@name", txtname.Value);
    cmd.Parameters.AddWithValue("@email", txtemail.Value);

    cmd.Parameters.AddWithValue("@phone", txtphone.Value);
    cmd.Parameters.AddWithValue("@subject", txtsubject.Value);
    cmd.Parameters.AddWithValue("@message", txtmessage.Value);
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
            txtsubject.Value = "";
            txtphone.Value = "";
            txtmessage.Value = "";


        }
    }
    catch { }
    finally { con.Close(); con.Dispose(); }
}

}
