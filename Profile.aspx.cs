using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Room_Booking_Management_System
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProfileInfo();
        }

        public void ProfileInfo()
        {
            var userId = Convert.ToInt32(Session["UserId"]);
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlDataAdapter adpt = new SqlDataAdapter("Select * from [User] where UserId = @userId", con);
            adpt.SelectCommand.Parameters.AddWithValue("@userId", userId);
            con.Open();
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            con.Close();
            txtFullName.Text = dt.Rows[0]["FullName"].ToString();
            txtEmail.Text = dt.Rows[0]["Emaiil"].ToString();
            txtPhoneNumber.Text = dt.Rows[0]["PhoneNumber"].ToString();
            txtGender.Text = dt.Rows[0]["Gender"].ToString();
            txtPassword.Text = dt.Rows[0]["Password"].ToString();
            txtAddress.Text = dt.Rows[0]["Address"].ToString();
        }

        

        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            var email = Convert.ToInt32(Session["Emaiil"]);
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("Update [User] set Password = '" + txtPassword.Text + "' where Emaiil = '" + txtEmail.Text + "'",con);
            con.Open();
            int rowCount = cmd.ExecuteNonQuery();
            con.Close() ;

            if (rowCount > 0)
            {
                lblMessage.Text = "Saved Successfully";
            }
            else { lblMessage.Text = "Error While saving Profile..."; }

        }
    }
}