using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

       
            conn.Open();
            cmd = new SqlCommand("select UserType,Full_Name from LoginDetails INNER JOIN CustomerDetails on LoginDetails.Email=CustomerDetails.Email where LoginDetails.Email='"+TextBox1.Text+"'  AND Pasword='"+TextBox2.Text+"'", conn);
            dr = cmd.ExecuteReader();

            dr.Read();

            if (dr.HasRows == true)
            {
                TextBox3.Text = dr["userType"].ToString();
                Session["UID"] = TextBox1.Text;
                Session["UD"] = TextBox1.Text;
                Session["un"] = dr["Full_Name"].ToString();
                Session["MPS"] = TextBox3.Text;
                Session.Timeout = 30;

                if (TextBox3.Text == "Customer")
                    Response.Redirect("CHome.aspx");
                

                Label1.Text = "";
            }

            else
            {

                dr.Close();
                cmd = new SqlCommand("select Usertype,Res_Name from LoginDetails INNER JOIN RestaurantDetails on LoginDetails.Email=RestaurantDetails.Email where LoginDetails.Email='" + TextBox1.Text + "' AND Pasword='" + TextBox2.Text + "'", conn);

                dr = cmd.ExecuteReader();
                dr.Read();

                if (dr.HasRows == true)
                {
                    TextBox3.Text= dr["usertype"].ToString() ;
                    Session["UID"] = TextBox1.Text;
                    Session["un"] = dr["Res_Name"].ToString();
                    Session.Timeout = 30;
                    Session["MPS"] = TextBox3.Text;

                    if (TextBox3.Text == "RESTURANT")
                        Response.Redirect("Rhomee.aspx");


                    Label1.Text = "";
                }

                else
                {
                    dr.Close();
                    cmd = new SqlCommand("select userType,email from loginDetails where email='" + TextBox1.Text + "' and Pasword = '" + TextBox2.Text + "'", conn);
                    dr = cmd.ExecuteReader();
                    dr.Read();
                    if (dr.HasRows== true)
                    {
                        Session["UID"] = TextBox1.Text;
                        TextBox3.Text = dr["usertype"].ToString();
                        Session["MPS"] = TextBox3.Text;
                        Session.Timeout = 30;
                        if (TextBox3.Text=="Admin")
                        Response.Redirect("AHome.aspx");

                    }
                    else
                    {
                        TextBox1.Focus();
                        Label1.Text = "Invalid email id or password";
                    }
                }
                dr.Close();
                conn.Close();
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            TextBox3.Text = "";
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = false;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = false;
            Button2.Visible = true;
            Button3.Visible = false;
            Button4.Visible = true;
            LinkButton1.Visible = false;
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            conn.Open();
            cmd = new SqlCommand("select MobileNo from LoginDetails INNER JOIN CustomerDetails on LoginDetails.Email=CustomerDetails.Email where LoginDetails.Email='" + TextBox3.Text + "'", conn);
            dr = cmd.ExecuteReader();

            dr.Read();

            if (dr.HasRows == true)
            {
                if (TextBox4.Text == dr["MobileNo"].ToString())
                {
                    Session["FP"] = TextBox3.Text;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    Label4.Visible = true;
                    TextBox3.Visible = false;
                    TextBox4.Visible = false;
                    TextBox5.Visible = true;
                    Button2.Visible = false;
                    Button3.Visible = true;
                    Button4.Visible = true;
                    LinkButton1.Visible = false;
                }
                else
                {
                    Label2.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = false;
                    TextBox3.Visible = true;
                    TextBox4.Visible = true;
                    TextBox5.Visible = false;
                    Button2.Visible = true;
                    Button3.Visible = false;
                    Button4.Visible = true;
                    LinkButton1.Visible = false;
                    Label5.Text = "Invalid Mobile No.";
                    TextBox4.Text = "";
                    TextBox4.Focus();
                }
            }

            else
            {
                dr.Close();
                cmd = new SqlCommand("select MobileNo from LoginDetails INNER JOIN RestaurantDetails on LoginDetails.Email=RestaurantDetails.Email where LoginDetails.Email='" + TextBox3.Text + "'", conn);

                dr = cmd.ExecuteReader();
                dr.Read();

                if (dr.HasRows == true)
                {
                    if (TextBox4.Text == dr["MobileNo"].ToString())
                    {
                        Session["FP"] = TextBox3.Text;
                        Label2.Visible = false;
                        Label3.Visible = false;
                        Label4.Visible = true;
                        TextBox3.Visible = false;
                        TextBox4.Visible = false;
                        TextBox5.Visible = true;
                        Button2.Visible = false;
                        Button3.Visible = true;
                        Button4.Visible = true;
                        LinkButton1.Visible = false;
                    }
                    else
                    {
                        Label2.Visible = true;
                        Label3.Visible = true;
                        Label4.Visible = false;
                        TextBox3.Visible = true;
                        TextBox4.Visible = true;
                        TextBox5.Visible = false;
                        Button2.Visible = true;
                        Button3.Visible = false;
                        Button4.Visible = true;
                        LinkButton1.Visible = false;
                        Label5.Text = "Invalid Mobile No.";
                        TextBox4.Text = "";
                        TextBox4.Focus();
                    }
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("update loginDetails set Pasword='" + TextBox5.Text + "'where Email='" + Session["FP"].ToString() + "'", conn);
            int X = cmd.ExecuteNonQuery();


            if (X > 0)
            {
              Label1.Text = "PASSWORD CHANGED";
              TextBox5.Visible = false;
              Label4.Visible = false;
              Button3.Visible = false;
                LinkButton1.Visible=true;
            }
            else
                Label5.Text = "Try again";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            LinkButton1.Visible = true;
        }
    }
}