using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        DemoDataContext k = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butlogin_Click(object sender, EventArgs e)
        {
            var dl = k.Username_search(Txtuser.Text, Txtpass.Text);
            int l = dl.Count();
            Txtuser.Text = (Txtuser.Text).ToUpper();
            if (l > 0)
            {
                Session["user"] = true;
                Session["ten"] = Txtuser.Text;
                if(Txtuser.Text=="ADMIN")
                {
                    Session["ADMIN"] = true;
                }
                Response.Redirect("index.aspx");
            }

            else
            {
                Lab.Text = "Đăng nhập thất bại. Mời bạn nhập lại !";
                Txtuser.Text = "";
                Txtpass.Text = "";
                Txtuser.Focus();
            }
        }
    }
}