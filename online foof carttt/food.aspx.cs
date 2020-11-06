using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_foof_carttt
{
    public partial class food : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["procon"]);
        SqlCommand cmd;
    
        protected void Page_Load(object sender, EventArgs e)
        {
            Image2.Visible = false;
            Label6.Visible = false;

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                String FoodName = ((Label)e.Item.FindControl("Label3")).Text;
                String Foodid = ((Label)e.Item.FindControl("Label2")).Text;
                String Foodimage = ((HiddenField)e.Item.FindControl("HFImage")).Value;
                String Foodprice = ((Label)e.Item.FindControl("Label4")).Text;
                String Restaurant = ((Label)e.Item.FindControl("Label7")).Text;
               

                conn.Open();
                cmd = new SqlCommand("insert into CartDetail( FoodID ,Foodname ,price, Fimage,Email,Quantity,Restaurant) values('" + Foodid + "','" + FoodName + "','" + Foodprice + "','" + Foodimage + "','" + Session["UID"].ToString() + "','1','" + Restaurant + "')", conn);
                int X = cmd.ExecuteNonQuery();

                if (X > 0)
                {

                    Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString());
                    conn.Close();
                }
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();

                Label5.Visible = false;
                Image2.Visible = false;
                Label6.Visible = false;
            }
            else
            {
                Image2.Visible = true;
                Label6.Visible = true;
            }

        }
    }
}