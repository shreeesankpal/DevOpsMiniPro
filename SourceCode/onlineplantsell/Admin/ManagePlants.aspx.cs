using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace onlineplantsell.Admin
{
    public partial class ManagePlants
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
            if (!IsPostBack)
            {
                LoadPlants();
            }
        }

        void LoadPlants()
        {
            SqlDataAdapter da =
            new SqlDataAdapter(
            "SELECT * FROM Plants",
            con);

            DataTable dt =
            new DataTable();

            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnAdd_Click(
        object sender,
        EventArgs e)
        {
            SqlCommand cmd =
            new SqlCommand(
            "INSERT INTO Plants(PlantName,Price) VALUES(@n,@p)",
            con);

            cmd.Parameters.AddWithValue(
            "@n",
            txtPlant.Text);

            cmd.Parameters.AddWithValue(
            "@p",
            txtPrice.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            LoadPlants();
        }
    }
}