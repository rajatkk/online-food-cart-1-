using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace online_foof_carttt
{
    public partial class Cfeedback : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["MPS"].ToString() == "Customer")
                this.MasterPageFile = "customer.Master";
            else if (Session["MPS"].ToString() == "RESTURANT")
                this.MasterPageFile = "Master2.Master";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible= false;
            Label4.Visible= false;
            Label5.Visible= false;
            Label6.Visible= false;
            Label7.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("Insert into FeedbackDetails(Email,Fmsg,Rating,FeedbackBy) values('" + Session["UID"].ToString() + "','" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + Session["MPS"].ToString() + "')", conn);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)

                Label2.Text = "Thanks you For Your Precious FeedBack ";
            conn.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
        }
    }
}