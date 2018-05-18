using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class chitiet : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int? so = null;
            int loaitin = Convert.ToInt32(Request["loaitin"]);
            int id= Convert.ToInt32(Request["id"]);
            //cap nhat so lần xem:
            dt.lanxem(id, ref so);
              if(so==null)
            {
                so = 0;
            };
              //tang so lan xem
            int gt = Convert.ToInt32(so) + 1;
            dt.Solx(id, gt);
            rploaitin.DataSource = dt.LOAITIN_seclect(loaitin);
            rploaitin.DataBind();
            rpchitiet.DataSource = dt.NOIDUNGTT_SECLIEC(id);
            rpchitiet.DataBind();
            rpHIENTHI.DataSource = dt.ramdom();
            rpHIENTHI.DataBind();
            Rpbinhluan.DataSource = dt.Binhluan_select_top(id);
            Rpbinhluan.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if((Boolean)Session["user"]==false)
            {
                Response.Redirect("login.aspx");
            }
            else
                {
                    int? idten=null;
                    string ten = Session["ten"].ToString();
                     dt.lay(ten, ref idten);
                     Txtnd.Text = (Txtnd.Text).Trim();
                    dt.Binhluan_Insert(Txtnd.Text, Convert.ToInt32(Request["id"]),idten, DateTime.Now);
            }
            
        }
    }
}