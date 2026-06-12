using System;
using System.Data.SqlClient;
using System.Configuration;

namespace onlineplantsell
{
    public partial class PlantDetails : System.Web.UI.Page
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
                int id =
                Convert.ToInt32(
                Request.QueryString["PlantID"]);

                SqlCommand cmd =
                new SqlCommand(
                "SELECT * FROM Plants WHERE PlantID=@id",
                con);

                cmd.Parameters.AddWithValue(
                "@id",
                id);

                con.Open();

                SqlDataReader dr =
                cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblName.Text =
                    dr["PlantName"].ToString();

                    lblPrice.Text =
                    "₹ " + dr["Price"].ToString();

                    lblDescription.Text =
                    dr["Description"].ToString();

                    imgPlant.ImageUrl =
                    "~/Images/" +
                    dr["ImageURL"].ToString();
                }

                con.Close();
            }
        }

        protected void btnAddCart_Click(
object sender,
EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            SqlCommand cmd =
            new SqlCommand(
            "INSERT INTO Cart(UserID,PlantID,Quantity) VALUES(@uid,@pid,1)",
            con);

            cmd.Parameters.AddWithValue(
            "@uid",
            Session["UserID"]);

            cmd.Parameters.AddWithValue(
            "@pid",
            Request.QueryString["PlantID"]);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("Cart.aspx");
        }
    }
}