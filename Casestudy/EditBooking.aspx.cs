using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casestudy
{
    public partial class EditBooking : System.Web.UI.Page
    {
        private int PnrNo => int.Parse(Request.QueryString["PnrNo"]);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBookingDetails();
            }
        }

        private void LoadBookingDetails()
        {
            TrainBookingData dataAccess = new TrainBookingData();
            DataTable bookingData = dataAccess.GetTrainBookings();
            DataRow row = bookingData.Select($"PnrNo = {PnrNo}")[0];

            txtFirstName.Text = row["FirstName"].ToString();
            txtLastName.Text = row["LastName"].ToString();
            txtSeatNo.Text = row["SeatNo"].ToString();
            txtTrainName.Text = row["TrainName"].ToString();
            txtTravelDate.Text = DateTime.Parse(row["TravelDate"].ToString()).ToString("yyyy-MM-dd");
            txtTravelTime.Text = TimeSpan.Parse(row["TravelTime"].ToString()).ToString();
            txtMobile.Text = row["Mobile"].ToString();
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            TrainBookingData dataAccess = new TrainBookingData();
            dataAccess.UpdateTrainBooking(
                PnrNo,
                txtFirstName.Text,
                txtLastName.Text,
                txtSeatNo.Text,
                txtTrainName.Text,
                DateTime.Parse(txtTravelDate.Text),
                TimeSpan.Parse(txtTravelTime.Text),
                txtMobile.Text
            );
            Response.Redirect("Default.aspx");
        }
    }
}