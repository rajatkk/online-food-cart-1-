using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class viewFdbck : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["MPS"].ToString() == "Customer")
                this.MasterPageFile = "customer.Master";
            else if (Session["MPS"].ToString() == "RESTURANT")
                this.MasterPageFile = "Master2.Master";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.Visible = false;
            Label2.Visible = false;
            conn.Open();
            cmd = new SqlCommand("select * from FeedbackDetails", conn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
            {
                Image1.Visible = true;
                Label2.Visible = true;
            }
            conn.Close();
        }
    }
}