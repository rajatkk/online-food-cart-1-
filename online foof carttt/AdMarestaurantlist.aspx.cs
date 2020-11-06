using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace online_foof_carttt
{
    public partial class customerlist : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataReader ddr;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Visible = false;
            Image1.Visible = false;
            Label1.Visible = false;
            conn.Open();
            cmd = new SqlCommand("select * from RestaurantDetails", conn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
            {
                Image1.Visible = true;
                Label1.Visible = true;
                Label1.Text = "EMPTY";
            }
            dr.Close();
            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            conn.Open();
            int Res_id = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text);
           
            cmd = new SqlCommand("select email from RestaurantDetails where Res_id ='" + Res_id + "'", conn);
            ddr= cmd.ExecuteReader();
            ddr.Read();
            if (ddr.HasRows)
            {
                //Label1.Visible = true;
                
                //Response.Redirect("AdMarestaurantlist.aspx");
                TextBox1.Text = ddr["email"].ToString();
                ddr.Close();
                cmd = new SqlCommand("Delete from RestaurantDetails where email='" + TextBox1.Text + "'", conn);
                int x = cmd.ExecuteNonQuery();

                if (x > 0)
                {
                    cmd = new SqlCommand("Delete From LoginDetails where Email='" + TextBox1.Text + "'", conn);
                    int d = cmd.ExecuteNonQuery();
                    if (d > 0)
                    {
                        Label1.Visible = true;

                        Response.Redirect("AdMarestaurantlist.aspx");
                    }

                }


            }
            
            conn.Close();
        }
    }
}