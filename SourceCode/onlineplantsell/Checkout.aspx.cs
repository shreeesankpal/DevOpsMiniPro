using System;
using System.Data.SqlClient;
using System.Configuration;

namespace onlineplantsell
{
    public partial class Checkout : System.Web.UI.Page
    {
        SqlConnection con =
        new SqlConnection(
        ConfigurationManager
        .ConnectionStrings["con"]
        .ConnectionString);

        protected void btnPlaceOrder_Click(
        object sender,
        EventArgs e)
        {
            SqlCommand cmd =
            new SqlCommand(
            "PlaceOrder",
            con);

            cmd.CommandType =
            System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue(
            "@UserID",
            Session["UserID"]);

            cmd.Parameters.AddWithValue(
            "@TotalAmount",
            1000);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect(
            "Orders.aspx");
        }
    }
}