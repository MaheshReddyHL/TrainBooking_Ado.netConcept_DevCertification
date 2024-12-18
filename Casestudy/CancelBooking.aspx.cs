using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casestudy
{
    public partial class DeleteBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int PnrNo => int.Parse(Request.QueryString["PnrNo"]);

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            TrainBookingData dataAccess = new TrainBookingData();
            dataAccess.DeleteTrainBooking(PnrNo);
            Response.Redirect("Default.aspx");
        }
    }
}