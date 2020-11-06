using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class AdCustomer : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataReader ddr;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Visible = false;
            Image1.Visible = false;
            Label2.Visible = false;
            conn.Open();
            cmd = new SqlCommand("select * from Customerdetails", conn);
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
                Label2.Text = "EMPTY";
            }
            dr.Close();
            conn.Close();
        }

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            conn.Open();
            int cus_id = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text);

            cmd = new SqlCommand("select email from CustomerDetails where cus_id ='" + cus_id + "'", conn);
            ddr = cmd.ExecuteReader();
            ddr.Read();
            if (ddr.HasRows)
            {
                
                TextBox1.Text = ddr["email"].ToString();
                ddr.Close();
                cmd = new SqlCommand("Delete from CustomerDetails where email='" + TextBox1.Text + "'", conn);
                int x = cmd.ExecuteNonQuery();

                if (x > 0)
                {
                    cmd = new SqlCommand("Delete From LoginDetails where Email='" + TextBox1.Text + "'", conn);
                    int d = cmd.ExecuteNonQuery();
                    if (d > 0)


                        Response.Redirect("AdCustomer.aspx");
                
                }


            }

            conn.Close();
        }

    }
    
}