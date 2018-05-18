using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.MasterPage
    {
        DemoDataContext n = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rpBANTIN.DataSource = n.LOAITIN_seclect_all();
                rpBANTIN.DataBind();
            }
        }
    }
}