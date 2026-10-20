using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Room_Booking_Management_System
{
    public partial class RoomRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblMessege.Text = "";
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("insert into Rooms (RoomNumber,RoomType,PricePerNight,Capacity,Status) values('" + txtRoomNumber.Text + "','" + rblRoomType.Text + "','" + txtPricePerNight.Text + "','" + txtCapacity.Text + "','" + txtStatus.Text + "')", con);
            con.Open();
            int rowCount=cmd.ExecuteNonQuery();
            con.Close();
            if (rowCount > 0)
            {
                lblMessege.Text = "Added Successfully...";
            }
            else
            {
                lblMessege.Text = "Error...";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            lblMessege.Text = "";
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("Delete from Rooms where RoomNumber = '" + txtRoomNumber.Text + "'");
            con.Open();
            int rowCount = cmd.ExecuteNonQuery();
            con.Close();

            if (rowCount > 0)
            {
                lblMessege.Text = "Deleted Successfully...";
            }
            else
            {
                lblMessege.Text = "Error...";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            lblMessege.Text = "";
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("Update Rooms set RoomNumber = '" + txtRoomNumber.Text + "',RoomType = '" + rblRoomType.Text + "',PricePerNight = '" + txtPricePerNight.Text + "',Capacity = '" + txtCapacity.Text + "',Status = '" + txtStatus.Text + "')", con);
            con.Open();
            int rowCount = cmd.ExecuteNonQuery();
            con.Close();

            if (rowCount > 0)
            {
                lblMessege.Text = "Updated Successfully...";
            }
            else
            {
                lblMessege.Text = "Error...";
            }
        }
    }
}