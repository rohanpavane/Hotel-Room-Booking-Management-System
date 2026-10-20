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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewBookedRoom();
        }

        protected void btnViewRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewRooms.aspx");
        }

        public void ViewBookedRoom()
        {
            var userId = Convert.ToInt32(Session["UserId"]);
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlDataAdapter adpt = new SqlDataAdapter("select * from Bookings where UserId = @userId", con);
            adpt.SelectCommand.Parameters.AddWithValue("@userId", userId);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            gvBookroom.DataSource = dt;
            gvBookroom.DataBind();

        }
    }
}