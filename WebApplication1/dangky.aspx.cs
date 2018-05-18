using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class dangky : System.Web.UI.Page
    {
        DemoDataContext k = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butlogin_Click(object sender, EventArgs e)
        {
            Txtuser.Text = (Txtuser.Text).Trim();
            Txtpass.Text = (Txtpass.Text).Trim();
            Txthoten.Text = (Txthoten.Text).Trim();

            if (Txtuser.Text == "" || Txtpass.Text == "" || Txthoten.Text == "" )
            {
                Lab.Text = "Kông bỏ trống các ô trống trên. Xin vui lòng nhập lại !";
                Txtuser.Text = "";
                Txtpass.Text = "";
                Txthoten.Text = "";
                Txtuser.Focus();
            }
            else
            {
                var l = k.Username_user(Txtuser.Text);
                int i = l.Count();
                if (i == 0)
                {
                    k.Username_Insert(Txtuser.Text, Txtpass.Text, Txthoten.Text);
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Lab.Text = "User đã tồn tại! Xin vui lòng nhập lại";
                    Txtuser.Text = "";
                    Txtpass.Text = "";
                    Txthoten.Text = "";
                    Txtuser.Focus();
                }
            }
        }
    }
}