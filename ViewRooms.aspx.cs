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
    public partial class ViewRooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            viewRooms();
        }

        public void viewRooms()
        {
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = HotelDB; Integrated Security = True");
            SqlDataAdapter adpt = new SqlDataAdapter("Select * from Rooms ", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            gvViewRooms.DataSource = dt;
            gvViewRooms.DataBind();

        }
        protected void gvViewRooms_SelectedIndexChanged(object sender, EventArgs e)
        {
            string roomId = gvViewRooms.SelectedDataKey.Value.ToString();

            Response.Redirect("RoomBooking.aspx?RoomId=" + roomId);
        }

    }
}