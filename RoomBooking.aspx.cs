using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Room_Booking_Management_System
{
    public partial class RoomBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
    {
        if (Request.QueryString["RoomId"] != null)
        {
            lblSelectedRoomId.Text = Request.QueryString["RoomId"];
        }
    }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            var userId = Convert.ToInt32(Session["UserId"]);
            int roomid = Convert.ToInt32(lblSelectedRoomId.Text);

            SqlCommand cmd = new SqlCommand("Insert into Bookings(UserId,RoomId,CheckInDate,CheckOutDate,Guests) values(@userId,@roomid,'"+txtCheckIn.Text+"','"+txtCheckOut.Text+"','"+txtGuest.Text+"')",con);
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.Parameters.AddWithValue("@RoomId", roomid);
            con.Open();
            int rowCount = cmd.ExecuteNonQuery();
            con.Close();

            if (rowCount > 0)
            {
                lblMessage.Text = "Book Successfully...";
            }
            else
            {
                lblMessage.Text = "Error while Booking Room";
            }
        }
    }
}