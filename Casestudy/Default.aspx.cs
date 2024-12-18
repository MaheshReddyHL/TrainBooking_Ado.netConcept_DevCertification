using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casestudy
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        
            
        }

        private void BindGrid()
        {
            TrainBookingData dataAccess = new TrainBookingData();
            GridView1.DataSource = dataAccess.GetTrainBookings();
            GridView1.DataBind();
        }
    }
}