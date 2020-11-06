using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class place_order : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            TextBox10.Visible = false;
            Label7.Visible = false;


            DataTable dt = new DataTable();
            String mycon = "Data Source=DESKTOP-1S4EG4M; Initial Catalog=online_food_cart; Integrated Security=True";

            String myquery = "select * from  CartDetail Where Email ='" + Session["UID"].ToString() + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(dt);
            
            
            GridView8.DataSource = dt;
            GridView8.DataBind();
            con.Close();
            GridView8.FooterRow.Cells[1].Text = "Total Amount";
            GridView8.FooterRow.Cells[2].Text = dt.Compute("Sum(price)", "").ToString();
            TextBox10.Text = GridView8.FooterRow.Cells[2].Text;
            Label9.Text = "Amount to be paid =" + TextBox10.Text;

            conn.Open();

            cmd = new SqlCommand("Select ADRS,MobileNo from CustomerDetails where Email ='" + Session["UID"].ToString() + "' ", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                TextBox8.Text = dr["ADRS"].ToString();
                Label2.Text = TextBox8.Text;
                Label3.Text = dr["MobileNo"].ToString();
            }
            dr.Close();
            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox9.Visible = false;


            conn.Open();
            cmd = new SqlCommand("select * from Cartdetail where Email='" + Session["UID"].ToString() + "'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows == true)
            {

                TextBox2.Text = dr["FoodID"].ToString();
                TextBox3.Text = dr["Foodname"].ToString();
                TextBox4.Text = dr["Quantity"].ToString();
                TextBox5.Text = dr["price"].ToString();
                TextBox7.Text = dr["Restaurant"].ToString();
                dr.Close();
                Button2.Visible = false;
                cmd = new SqlCommand("insert into OrderDetails(FoodID,Foodname,Quantity,price,Email,Restaurant,Adrs) values (" + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox10.Text + "','" + Session["UID"].ToString() + "', '" + TextBox7.Text + "','" + TextBox8.Text + "'); select MAX(orderID) From OrderDetails", conn);
                string y = cmd.ExecuteScalar().ToString();

                if (y != null)
                {
                    TextBox6.Text = y;
                    cmd = new SqlCommand("Delete from  Cartdetail where Email='" + Session["UID"].ToString() + "'", conn);
                    cmd.ExecuteNonQuery();

                    conn.Close();
                    conn.Open();
                    cmd = new SqlCommand("insert into PaymentDetails(orderID,PaymentType,price,Email,Restaurant) values ('" + TextBox6.Text + "','COD','" + TextBox10.Text + "','" + Session["UID"].ToString() + "','" + TextBox7.Text + "')", conn);
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        Label4.Text = "Your Order is successfully Placed";
                    }
                }

                conn.Close();
            }

        }
        

        protected void Button3_Click1(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("select PromoCode ,Discount from promocodeDetails where promocode='" + TextBox9.Text + "'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                Label7.Text = dr["Discount"].ToString();
                Label6.Text = "Your Discount  Value is : " + Label7.Text;
                TextBox10.Text = ((Convert.ToInt32(TextBox10.Text)) - ((Convert.ToInt32(Label7.Text)))).ToString();
                Label9.Text = "Amount to be paid =" + TextBox10.Text;
            }
        }
    }
}
   