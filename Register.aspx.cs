using System;
using System.Data.SqlClient;

namespace Hotel_Room_Booking_Management_System
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("Insert Into [User] (FullName,Emaiil,PhoneNumber,Password,Gender,Address) Values('" + txtFullName.Text + "','" + txtEmail.Text + "','" + txtPhoneNumber.Text + "','" + txtPassword.Text + "','" + rblGender.Text + "','" + txtAddress.Text + "')", con);
            con.Open();
            int rowCount = cmd.ExecuteNonQuery();
            con.Close();

            if (rowCount > 0)
            {
                lblMessage.Text = "Registration Successfully...";
            }
            else { lblMessage.Text = "Error while registration..."; }

            Response.Redirect("Login.aspx");
        }
    }
}