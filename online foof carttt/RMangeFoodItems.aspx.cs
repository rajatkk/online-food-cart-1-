using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace online_foof_carttt
{
    
    public partial class ManageOlist : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
            Image1.Visible = false;
            Label2.Visible = false;
            conn.Open();
            cmd = new SqlCommand("select * from  FoodItemDetails Where Email ='" + Session["UID"].ToString() + "' ", conn);
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

            conn.Close();
        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            conn.Open();
            FileUpload1.SaveAs(Server.MapPath("~/image/") + Path.GetFileName(FileUpload1.FileName));
            String link = "image/" + Path.GetFileName(FileUpload1.FileName);
            
            SqlCommand cmd = new SqlCommand("insert into FoodItemDetails (Name_Name,FOOD_DETAIL,price,keyword,Email,image) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Session["UID"].ToString() + "','" + link + "')", conn);

            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label3.Text = "Uploded Successfully";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = ""; 
                TextBox4.Text = "";
                TextBox1.Focus();


            }

            conn.Close();
        }

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            
            conn.Open();
            int foodid = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text);

            cmd = new SqlCommand("Delete from FoodItemDetails where FoodID='" + foodid + "'And Email='" + Session["UID"].ToString() + "'", conn);
            int isdeleted = cmd.ExecuteNonQuery();

            if (isdeleted > 0)
            {
                Label3.Text= "One Item is Deleted ";
                Response.Redirect("RManageOlist.aspx");
            }

            conn.Close();
        
        }
    }
}