using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casestudy
{
    public partial class DetailsBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int pnrNo = Convert.ToInt32(Request.QueryString["PnrNo"]);
                LoadBookingDetails(pnrNo);
            }
        }

        private void LoadBookingDetails(int pnrNo)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["TrainBookingDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM TrainBooking WHERE PnrNo = @PnrNo", conn);
                cmd.Parameters.AddWithValue("@PnrNo", pnrNo);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    lblPnrNo.Text = reader["PnrNo"].ToString();
                    lblFirstName.Text = reader["FirstName"].ToString();
                    lblLastName.Text = reader["LastName"].ToString();
                    lblSeatNo.Text = reader["SeatNo"].ToString();
                    lblTrainName.Text = reader["TrainName"].ToString();
                    lblTravelDate.Text = Convert.ToDateTime(reader["TravelDate"]).ToString("yyyy-MM-dd");
                    TimeSpan travelTime = (TimeSpan)reader["TravelTime"];
                    lblTravelTime.Text = travelTime.ToString(@"hh\:mm");
                    lblMobile.Text = reader["Mobile"].ToString();
                }
            }
        }

        

       
    }
}