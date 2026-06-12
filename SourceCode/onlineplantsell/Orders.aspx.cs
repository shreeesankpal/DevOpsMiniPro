using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace onlineplantsell
{
    public partial class Orders : System.Web.UI.Page
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
                LoadOrders();
            }
        }

        void LoadOrders()
        {
            SqlDataAdapter da =
            new SqlDataAdapter(
            "SELECT * FROM Orders WHERE UserID=@uid",
            con);

            da.SelectCommand.Parameters.AddWithValue(
            "@uid",
            Session["UserID"]);

            DataTable dt =
            new DataTable();

            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}