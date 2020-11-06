using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_foof_carttt
{
    public partial class Customer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["un"] != null)
                Label1.Text = Session["un"].ToString();
            else
                Response.Redirect("Login.aspx");
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CSignout.aspx");
        }
    }
}