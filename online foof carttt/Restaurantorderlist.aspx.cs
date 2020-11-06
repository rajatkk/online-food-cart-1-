using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class Restaurantorderlist : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView3.Visible = false;
            Image1.Visible = false;
            Label2.Visible = false;
            Image2.Visible = false;
            Label5.Visible = false ;

            conn.Open();
            cmd = new SqlCommand("select * from  OrderDetails Where Restaurant ='" + Session["UID"].ToString() + "' ", conn);
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
            dr.Dispose();
            conn.Close();
            conn.Open();
            cmd = new SqlCommand("select * from  DeliveryStatus Where Emailr ='" + Session["UID"].ToString() + "'  ", conn);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                GridView3.DataSource = dr;
                GridView3.DataBind();
            }
            else
            {
                Image2.Visible = true;
                Label5.Visible = true;
            }
            dr.Dispose();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("select orderid from OrderDetails Where orderid='" + TextBox1.Text + "'", conn);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                dr.Dispose();
                cmd = new SqlCommand("Delete from DeliveryStatus where OrderID='" + TextBox1.Text + "'", conn);
                cmd.ExecuteNonQuery();

               
                conn.Close();
               
            }
            conn.Close();
            conn.Open();
            cmd = new SqlCommand("insert into DeliveryStatus( OrderID,Status,EmailC,EmailR)values('" + TextBox1.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox2.Text + "','" + Session["UID"].ToString() + "') ", conn);
            int g = cmd.ExecuteNonQuery();
            if (g > 0)
            {
                Response.Redirect("Restaurantorderlist.aspx");
            }
            conn.Close();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridView3.Visible = true;
            
        }
    }
}

   
