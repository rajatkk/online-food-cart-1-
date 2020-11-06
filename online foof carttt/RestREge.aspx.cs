using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class RestREge : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                conn.Open();
                cmd = new SqlCommand("Select* from statemaster order by state ", conn);

                dr = cmd.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {
                    DropDownList1.DataSource = dr;
                    DropDownList1.DataTextField = "State";

                    DropDownList1.DataValueField = "Stateid";
                    DropDownList1.DataBind();

                    DropDownList1.Items.Insert(0, "Select State");
                    DropDownList1.Items.Insert(DropDownList1.Items.Count, "others");

                }
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("insert into RestaurantDetails (Res_Name,Owner_Name,Restaurant_Type,Email,MOBILENo,State,City,Pincode,Full_Address) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox4.Text + "'," + TextBox3.Text + ",'" +DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedValue + "'," + TextBox13.Text + ",'" + TextBox9.Text + "');insert into LoginDetails(Email, Pasword,usertype) values('" + TextBox4.Text + "','" + TextBox6.Text + "','RESTURANT')", conn);
            int X = cmd.ExecuteNonQuery();


            if (X > 0)
                Label1.Text = "Registration Done dude";
            else
                Label1.Text = "Try again";

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox9.Text = "";
            TextBox6.Text = "";
            TextBox10.Text = "";
            TextBox13.Text = "";
            RadioButtonList1.SelectedIndex = -1;
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;

            TextBox1.Focus();

            conn.Close();
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("   select * from citymMaste where stateId = " + DropDownList1.SelectedValue + " order by city", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                DropDownList2.DataSource = dr;
                DropDownList2.DataValueField = "city_id";
                DropDownList2.DataTextField = "city";
                DropDownList2.DataBind();

                DropDownList2.Items.Insert(0, "Select City");
                DropDownList2.Items.Insert(DropDownList2.Items.Count, "others");
            }
            conn.Close();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}