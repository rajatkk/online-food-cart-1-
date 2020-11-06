using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class AdMlocation : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataReader ddr;

        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton2.Visible = false;
            Label2.Visible =   false;
            Label3.Visible =   false;
            Label4.Visible =   false;
            Label5.Visible =   false;
            Label7.Visible =   false;
            Label8.Visible =   false;
            Label9.Visible =   false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;


            conn.Open();
            cmd = new SqlCommand("select * from statemaster", conn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView2.DataSource = dr;
                GridView2.DataBind();
            }
            else
            {
                Label1.Text = "Empty";
            }
            dr.Close();
            conn.Close();


            conn.Open();
            cmd = new SqlCommand("select * from citymMaste", conn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "Empty";
            }
            dr.Close();
            conn.Close();

        }

        protected void GridView2_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int stid = Convert.ToInt32(GridView2.Rows[e.RowIndex].Cells[0].Text);
            conn.Open();
            cmd = new SqlCommand("delete from statemaster where stateid='"+stid+"'", conn);
            int y = cmd.ExecuteNonQuery();
            if (y > 0)
                Label1.Text = "One State is Deleted From the list";
            conn.Close();
        }

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int ctid = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text);
            conn.Open();
            cmd = new SqlCommand("delete from citymMaste where city_id='" + ctid + "'", conn);
            int y = cmd.ExecuteNonQuery();
            if (y > 0)
                Label1.Text = "One city is Deleted From the list";
            conn.Close();
        }

        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton2.Visible = true;
            LinkButton1.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button1.Visible = true;
            Button2.Visible = false;
            Button3.Visible = true;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdMlocation.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LinkButton2.Visible = true;
            LinkButton1.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button1.Visible = true;
            Button3.Visible = true;
            
            conn.Open();
            cmd = new SqlCommand("insert into statemaster(stateid,state) values('" + TextBox1.Text + "','" + TextBox2.Text + "')", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
                Label1.Text = "Added successfully";
            else
                Label1.Text = "failed try agin after some time";
            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            LinkButton2.Visible = true;
            LinkButton1.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button1.Visible = true;
            
            conn.Open();
            cmd = new SqlCommand("select Stateid from citymMaste where stateid='"+TextBox3.Text+"'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Button2.Visible = true;
                Button3.Visible = false;
                TextBox4.Visible = true;
                TextBox5.Visible = true;
                Label6.Text = "";
            }
            else
            {
                Label6.Text = "No State id is in City Master";
                Button2.Visible = false;
                Button3.Visible = true;
            }
            dr.Dispose();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            conn.Open();
            cmd = new SqlCommand("insert into citymMaste(city,city_id,stateid) values('" + TextBox4.Text + "'," + TextBox5.Text + "," + TextBox3.Text + ")", conn);
            int b = cmd.ExecuteNonQuery();
            if (b > 0)
                Label1.Text = "Added successfully";
            else
                Label1.Text = "failed try agin after some time";
            conn.Close();
            LinkButton2.Visible = true;
            LinkButton1.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
        }

        
    }
}