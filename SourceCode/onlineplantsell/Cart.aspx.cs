using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace onlineplantsell
{
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection con =
        new SqlConnection(
        ConfigurationManager
        .ConnectionStrings["con"]
        .ConnectionString);

        protected void Page_Load(
        object sender,
        EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCart();
            }
        }

        void LoadCart()
        {
            SqlDataAdapter da =
            new SqlDataAdapter(
            "SELECT Plants.PlantName,Plants.Price,Cart.Quantity FROM Cart INNER JOIN Plants ON Cart.PlantID=Plants.PlantID",
            con);

            DataTable dt =
            new DataTable();

            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnCheckout_Click(
        object sender,
        EventArgs e)
        {
            Session["PotType"] =
            rblPot.SelectedValue;

            Response.Redirect(
            "Checkout.aspx");
        }
    }
}