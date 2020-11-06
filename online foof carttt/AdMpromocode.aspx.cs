using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class AdMpromocode : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
   
            Image1.Visible = false;
            Label2.Visible = false;
            conn.Open();

            cmd = new SqlCommand("select * from promocodeDetails", conn);
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
            dr.Close();
            conn.Close();
        }

       
           
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("insert into promocodeDetails(PromoCode,Discount) values ('" + TextBox1.Text + "','" + TextBox2.Text + "')", conn);
            int dlt1 = cmd.ExecuteNonQuery();
            if (dlt1 > 0)
            {
                Label4.Text = "Added successfull";
                Response.Redirect("AdMpromocode.aspx");
            }

            else
            {
                Label4.Text = "Try After some Time";
            }

            conn.Close();
        }

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            conn.Open();
            int Pid = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text);

            cmd = new SqlCommand("delete from promocodeDetails where PromoID='" + Pid + "'", conn);
            int dlt = cmd.ExecuteNonQuery();
            if (dlt > 0)
            {
                Label4.Text = "Deleted successfull";
                Response.Redirect("AdMpromocode.aspx");
            }
            else
            {
                Label4.Text = "Try After some Time";
            }

            conn.Close();
        }

      
    }
}