using System;
using System.Configuration;
using System.Data.SqlClient;

namespace onlineplantsell.Admin
{
    public partial class Dashboard
        : System.Web.UI.Page
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
            CountUsers();
            CountPlants();
            CountOrders();
        }

        void CountUsers()
        {
            SqlCommand cmd =
            new SqlCommand(
            "SELECT COUNT(*) FROM Users",
            con);

            con.Open();

            lblUsers.Text =
            "Total Users : " +
            cmd.ExecuteScalar();

            con.Close();
        }

        void CountPlants()
        {
            SqlCommand cmd =
            new SqlCommand(
            "SELECT COUNT(*) FROM Plants",
            con);

            con.Open();

            lblPlants.Text =
            "Total Plants : " +
            cmd.ExecuteScalar();

            con.Close();
        }

        void CountOrders()
        {
            SqlCommand cmd =
            new SqlCommand(
            "SELECT COUNT(*) FROM Orders",
            con);

            con.Open();

            lblOrders.Text =
            "Total Orders : " +
            cmd.ExecuteScalar();

            con.Close();
        }
    }
}