using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class Rprofile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            RadioButtonList1.Visible = false;

            Button1.Visible = false;
            Button2.Visible = false;
            LinkButton1.Visible = true;

              conn.Open();
            cmd = new SqlCommand("select * from  RestaurantDetails Where Email ='" + Session["UID"].ToString() + "' ", conn);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows == true)
            {
                Label2.Text = dr["Res_id"].ToString();
                Label3.Text = dr["Res_Name"].ToString();
                Label4.Text = dr["Owner_Name"].ToString();
                Label5.Text = dr["Restaurant_Type"].ToString();
                Label6.Text = dr["MobileNo"].ToString();
                Label7.Text = dr["Email"].ToString();
                Label8.Text = dr["city"].ToString();
                Label9.Text = dr["State"].ToString();
                Label10.Text = dr["Pincode"].ToString();
                Label11.Text = dr["Full_Address"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            RadioButtonList1.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            LinkButton1.Visible = false;

            Label2.Visible = true;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = true;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible= false;
            Label11.Visible = false;

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Close();
            conn.Open();
            cmd = new SqlCommand(" update RestaurantDetails set Res_Name='" + TextBox1.Text + "',Owner_Name='" + TextBox2.Text + "',Restaurant_Type = '" + RadioButtonList1.SelectedValue + "',MobileNo= " + TextBox4.Text + ", Pincode= " + TextBox7.Text + ",city ='" + TextBox5.Text + "',State='" + TextBox6.Text + "' ,Full_Address='" + TextBox8.Text + "' Where Email='" + Session["UID"].ToString() + "'", conn);
            int X = cmd.ExecuteNonQuery();


            if (X > 0)

                Response.Redirect("Rprofile.aspx");

            else
            {
                Label11.Text = "Try again";

                TextBox1.Text = "";
                TextBox2.Text = "";
                
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";

                TextBox1.Focus();
            }

            conn.Close();
        }
    }
}