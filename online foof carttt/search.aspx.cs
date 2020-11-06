using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_foof_carttt
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Addproduct"] = "false";
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
                Label5.Visible = false;
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["Addproduct"] = true;

            Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}