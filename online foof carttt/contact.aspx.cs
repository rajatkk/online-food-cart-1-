using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_foof_carttt
{
    public partial class contat : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["MPS"].ToString() == "Customer")
                this.MasterPageFile = "customer.Master";
            else if (Session["MPS"].ToString() == "RESTURANT")
                this.MasterPageFile = "Master2.Master";
            else if (Session["MPS"].ToString() == "Admin")
                this.MasterPageFile = "Admin.Master";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
}