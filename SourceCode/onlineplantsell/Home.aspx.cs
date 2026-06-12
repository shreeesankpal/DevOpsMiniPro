using System;

namespace onlineplantsell
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(
        object sender,
        EventArgs e)
        {
            lblVisitors.Text = "Visitors : " +
            Application["Visitors"].ToString();
        }

        protected void btnShop_Click(
        object sender,
        EventArgs e)
        {
            Response.Redirect("Plants.aspx");
        }
    }
}