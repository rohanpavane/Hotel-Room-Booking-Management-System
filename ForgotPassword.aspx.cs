using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Room_Booking_Management_System
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("Update [User] set Password = '" + txtPassword.Text + "' where Emaiil = '"+txtEmail.Text+"'", con);
            con.Open();
            int rowCount = cmd.ExecuteNonQuery();
            con.Close();

            if (txtPassword.Text == txtConPassword.Text)
            {
                if (rowCount > 0)
                {
                    lblMessage.Text = "Updated Successfully...";
                }
                else { lblMessage.Text = "Error while Chaging Password..."; }
            }
            else
            {
                lblMessage.Text = "Password could not match...";
            }
            
        }
    }
}