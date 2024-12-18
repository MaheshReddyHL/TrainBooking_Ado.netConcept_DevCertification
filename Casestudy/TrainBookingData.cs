using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Casestudy
{
    public class TrainBookingData
    {

        private readonly string connectionString = ConfigurationManager.ConnectionStrings["TrainBookingDB"].ConnectionString;

        public DataTable GetTrainBookings()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM TrainBooking", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        public void InsertTrainBooking(string firstName, string lastName, string seatNo, string trainName, DateTime travelDate, TimeSpan travelTime, string mobile)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO TrainBooking (FirstName, LastName, SeatNo, TrainName, TravelDate, TravelTime, Mobile) VALUES (@FirstName, @LastName, @SeatNo, @TrainName, @TravelDate, @TravelTime, @Mobile)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@SeatNo", seatNo);
                cmd.Parameters.AddWithValue("@TrainName", trainName);
                cmd.Parameters.AddWithValue("@TravelDate", travelDate);
                cmd.Parameters.AddWithValue("@TravelTime", travelTime);
                cmd.Parameters.AddWithValue("@Mobile", mobile);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void UpdateTrainBooking(int pnrNo, string firstName, string lastName, string seatNo, string trainName, DateTime travelDate, TimeSpan travelTime, string mobile)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "UPDATE TrainBooking SET FirstName = @FirstName, LastName = @LastName, SeatNo = @SeatNo, TrainName = @TrainName, TravelDate = @TravelDate, TravelTime = @TravelTime, Mobile = @Mobile WHERE PnrNo = @PnrNo";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@PnrNo", pnrNo);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@SeatNo", seatNo);
                cmd.Parameters.AddWithValue("@TrainName", trainName);
                cmd.Parameters.AddWithValue("@TravelDate", travelDate);
                cmd.Parameters.AddWithValue("@TravelTime", travelTime);
                cmd.Parameters.AddWithValue("@Mobile", mobile);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void DeleteTrainBooking(int pnrNo)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM TrainBooking WHERE PnrNo = @PnrNo";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@PnrNo", pnrNo);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}