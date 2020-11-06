using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace online_foof_carttt
{
    public partial class AddtoCart : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
           // Image1.Visible = false;
           // Label2.Visible = false;
            Button1.Visible = false;
            conn.Open();
            cmd = new SqlCommand("select * from  CartDetail Where Email ='" + Session["UID"].ToString() + "' ", conn);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                GridView10.DataSource = dr;
                GridView10.DataBind();
                Button1.Visible = true;
            }
            else
            {
                //Image1.Visible = true;
                //Label2.Visible = true;
            }
            dr.Dispose();
             conn.Close();
            
         
        }

        protected void GridView10_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            
            int foodid = Convert.ToInt32(GridView10.Rows[e.RowIndex].Cells[0].Text);
            conn.Open();
            cmd=new SqlCommand("Delete from Cartdetail where FoodID='"+foodid+"'And Email='"+Session["UID"].ToString()+"'",conn);
            int isdeleted = cmd.ExecuteNonQuery();

            if (isdeleted > 0)
            {
               // Label1.Text= "One Item is Deleted Form Your Cart";
                Response.Redirect("AddtoCart.aspx");
            }

            conn.Close();
        }

       
            
        

        protected void GridView10_DataBound(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Label1.Text = "humm";
        }
    }
}