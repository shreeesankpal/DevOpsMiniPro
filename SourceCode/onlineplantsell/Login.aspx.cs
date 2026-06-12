using System;
using System.Configuration;
using System.Data.SqlClient;

namespace onlineplantsell
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con =
        new SqlConnection(
        ConfigurationManager
        .ConnectionStrings["con"]
        .ConnectionString);

        protected void btnLogin_Click(
        object sender,
        EventArgs e)
        {
            SqlCommand cmd =
            new SqlCommand(
            "select * from Users where Email=@Email and Password=@Password",
            con);

            cmd.Parameters.AddWithValue(
            "@Email",
            txtEmail.Text);

            cmd.Parameters.AddWithValue(
            "@Password",
            txtPassword.Text);

            con.Open();

            SqlDataReader dr =
            cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["UserID"] =
                dr["UserID"];

                Session["Name"] =
                dr["Name"].ToString();

                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMsg.Text =
                "Invalid Login";
            }

            con.Close();
        }
    }
}