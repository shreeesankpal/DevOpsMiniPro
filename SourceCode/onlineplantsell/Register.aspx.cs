using System;
using System.Configuration;
using System.Data.SqlClient;

namespace onlineplantsell
{
    public partial class Register : System.Web.UI.Page
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
            UnobtrusiveValidationMode =
            System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnRegister_Click(
        object sender,
        EventArgs e)
        {
            SqlCommand cmd =
            new SqlCommand(
            "insert into Users(Name,Email,Mobile,Password) values(@Name,@Email,@Mobile,@Password)",
            con);

            cmd.Parameters.AddWithValue(
            "@Name",
            txtName.Text);

            cmd.Parameters.AddWithValue(
            "@Email",
            txtEmail.Text);

            cmd.Parameters.AddWithValue(
            "@Mobile",
            txtMobile.Text);

            cmd.Parameters.AddWithValue(
            "@Password",
            txtPassword.Text);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text =
            "Registration Successful";

            Response.Redirect("Login.aspx");
        }
    }
}