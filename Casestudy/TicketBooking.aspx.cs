using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casestudy
{
    public partial class CreateBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            TrainBookingData dataAccess = new TrainBookingData();
            dataAccess.InsertTrainBooking(
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