using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class orderdetails : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.Visible = false;
            Label3.Visible = false;

            conn.Open();
            cmd = new SqlCommand("select * from  OrderDetails Where Email ='" + Session["UID"].ToString() + "' ", conn);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                GridView8.DataSource = dr;
                GridView8.DataBind();
            }
            else
            {
                Image1.Visible = true;
                Label3.Visible = true;
            }
            conn.Close();

       
        }

        protected void GridView8_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            conn.Open();
            int orderid = Convert.ToInt32(GridView8.Rows[e.RowIndex].Cells[0].Text);

            cmd = new SqlCommand("insert into CancelDetails select * from OrderDetails  where orderid='" + orderid + "'And Email='" + Session["UID"].ToString() + "'", conn);
            int isdeleted = cmd.ExecuteNonQuery();

            if (isdeleted > 0)
            {
                cmd = new SqlCommand("Delete from OrderDetails where orderid='" + orderid + "'And Email='" + Session["UID"].ToString() + "'", conn);
                int d = cmd.ExecuteNonQuery();

                if (d > 0)
                {
                    cmd = new SqlCommand("Delete from PaymentDetails where orderid='" + orderid + "'And Email='" + Session["UID"].ToString() + "'", conn);
                    int h = cmd.ExecuteNonQuery();
                    if (d > 0)
                    {
                        Label2.Text = "Your order one is cancel ";
                        Response.Redirect("orderdetails.aspx");
                    }
                }
                else
                    Label2.Text = "unabel to cancel";

                conn.Close();
            } 
        }
    }
}