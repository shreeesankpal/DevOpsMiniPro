using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace onlineplantsell
{
    public partial class Plants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPlants();
            }
        }

        private void LoadPlants()
        {
            string cs =
                ConfigurationManager
                .ConnectionStrings["con"]
                .ConnectionString;

            using (SqlConnection con =
                new SqlConnection(cs))
            {
                SqlDataAdapter da =
                    new SqlDataAdapter(
                    "SELECT * FROM Plants",
                    con);

                DataTable dt =
                    new DataTable();

                da.Fill(dt);

                dlPlants.DataSource = dt;
                dlPlants.DataBind();
            }
        }

        protected void btnSearch_Click(
            object sender,
            EventArgs e)
        {
            string cs =
                ConfigurationManager
                .ConnectionStrings["con"]
                .ConnectionString;

            using (SqlConnection con =
                new SqlConnection(cs))
            {
                SqlDataAdapter da =
                    new SqlDataAdapter(
                    "SELECT * FROM Plants WHERE PlantName LIKE '%' + @name + '%'",
                    con);

                da.SelectCommand.Parameters.AddWithValue(
                    "@name",
                    txtSearch.Text);

                DataTable dt =
                    new DataTable();

                da.Fill(dt);

                dlPlants.DataSource = dt;
                dlPlants.DataBind();
            }
        }
    }
}