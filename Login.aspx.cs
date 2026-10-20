using System;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;

namespace Hotel_Room_Booking_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("select UserId, Role from [User] where Emaiil = '" + txtEmail.Text + "' and Password = '" + txtPassword.Text + "'", con);
            con.Open();
            //int rowCount = (int)cmd.ExecuteScalar();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Session["UserId"] = dr["UserId"];
                String Role = dr["Role"].ToString();
                Session["Role"] = Role;

                dr.Close();
                con.Close();

                if(Role == "Admin")
                {
                    Response.Redirect("RoomRegistration.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
                
            }
            else
            {
                dr.Close() ;
                con.Close();

                Response.Redirect("Invalid Email or password");
            }
        }
    }
}