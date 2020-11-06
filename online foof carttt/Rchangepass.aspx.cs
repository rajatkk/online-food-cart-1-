using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class Rchangepass : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            //  Label3.Visible=false;
            Button2.Visible = false;
            TextBox2.Visible = false;
            //  TextBox3.Visible=false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              conn.Open();
            cmd = new SqlCommand("select Pasword from loginDetails where Email='" + Session["UID"].ToString() + "'", conn);
            dr = cmd.ExecuteReader();

            dr.Read();

            if (dr.HasRows == true)
            {
                if (TextBox1.Text == dr["Pasword"].ToString())
                {
                    Label2.Visible   = true;
                    //Label3.Visible   = true;
                    Button2.Visible  = true;
                    TextBox2.Visible = true;
                  //  TextBox3.Visible = true;
                    Button1.Visible  = false;
                    Label4.Text = "";
                    Label6.Visible = false;
                    TextBox1.Visible = false;
                }
                else
                    Label4.Text = "Not Match"; 
              }
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("update loginDetails set Pasword='" + TextBox2.Text + "'where Email='" + Session["UID"].ToString() + "'", conn);
            int X = cmd.ExecuteNonQuery();


            if (X > 0)
            {
                Label5.Text = "PASSWORD CHANGED";
                Label6.Visible = false;
                TextBox1.Visible = false;

            }
            else
                Label5.Text = "Try again";

        }
    }
}