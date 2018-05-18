using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Bantin : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["loaitin"]);
            Rpbantin.DataSource = dt.LOAITIN_seclect(id);
            Rpbantin.DataBind();
            rpHIENTHI.DataSource = dt.NOIDUNGTT_SECLIEC_MLTIN(id);
            rpHIENTHI.DataBind();
        }
    }
}