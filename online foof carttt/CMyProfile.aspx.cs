using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{   
       
    public partial class CMyProfile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            if (Page.IsPostBack == false)
            {
                
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

                
                dr.Close();
                cmd = new SqlCommand("select * from  CustomerDetails Where Email ='" + Session["UID"].ToString() + "' ", conn);
                dr = cmd.ExecuteReader();

                dr.Read();
                if (dr.HasRows == true)
                {
                    Label1.Text = dr["cus_id"].ToString();
                    Label2.Text = dr["Full_Name"].ToString();
                    Label3.Text = dr["Gender"].ToString();
                    Label4.Text = dr["MobileNo"].ToString();
                    Label5.Text = dr["Email"].ToString();
                    Label6.Text = dr["DOB"].ToString();
                    Label7.Text = dr["State"].ToString();
                    Label8.Text = dr["city"].ToString();
                    Label9.Text = dr["Pincode"].ToString();
                    Label10.Text = dr["ADRS"].ToString();

                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    TextBox3.Visible = false; 
                    DropDownList1.Visible = false;
                    DropDownList2.Visible = false;
                    TextBox6.Visible = false;
                    TextBox7.Visible = false;
                    RadioButtonList1.Visible = false;

                    Button1.Visible = false;
                    Button2.Visible = false;
                    LinkButton1.Visible = true;
                }


            }

            
            conn.Close();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
            
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;

            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            RadioButtonList1.Visible = true;
            DropDownList1.Visible = true;
            DropDownList2.Visible = true;
            Button1.Visible = true;
            Button2.Visible = true;
            LinkButton1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            Label10.Visible = true;

            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            DropDownList1.Visible = false;
            DropDownList2.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            RadioButtonList1.Visible = false;

            Button1.Visible = false;
            Button2.Visible = false;
            LinkButton1.Visible = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Close();
            conn.Open();
            cmd = new SqlCommand(" update CustomerDetails set Full_Name='" + TextBox1.Text + "', Gender= '" + RadioButtonList1.SelectedValue + "',MobileNo= " + TextBox2.Text + ", Pincode= " + TextBox6.Text + ",city ='" + DropDownList2.SelectedIndex + "',State='" + DropDownList1.SelectedIndex + "' ,ADRS='" + TextBox7.Text + "',DOB='" + TextBox3.Text + "' Where Email='" + Session["UID"].ToString() + "'", conn);
            int X = cmd.ExecuteNonQuery();


            if (X > 0)

                Response.Redirect("CMyProfile.aspx");

            else
            {
                Label11.Text = "Try again";

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                
                TextBox6.Text = "";
                TextBox7.Text = "";

                TextBox1.Focus();
            }

            conn.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
             cmd = new SqlCommand("   select * from citymMaste where stateId = "+DropDownList1.SelectedValue+" order by city", conn);
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
        
    }
}