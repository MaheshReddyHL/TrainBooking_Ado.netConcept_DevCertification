<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBooking.aspx.cs" Inherits="Casestudy.DetailsBooking" %>

<!DOCTYPE html>
<html>
<head>
    <title>Booking Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .ticket-card {
            background: #ffffff;
            border: 2px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            width: 350px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .ticket-header {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 10px;
            border-radius: 8px 8px 0 0;
        }

        .ticket-content {
            padding: 15px;
        }

        .row {
            margin-bottom: 10px;
        }

        .label {
            font-weight: bold;
            display: inline-block;
            width: 110px;
            text-align: right;
            margin-right: 5px;
        }

        .value {
            display: inline-block;
            color: #333;
        }

        .ticket-footer {
            text-align: center;
            margin-top: 15px;
            font-size: 0.9em;
            color: #555;
        }

        .back-link {
            display: block;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
        }

        .back-link:hover {
            color:orangered;

        }
        .btn{
            background-color:royalblue;
            color:white;
        }

        @media print {
            body {
                background-color: white;
                margin: 0;
                padding: 0;
            }

            .ticket-card {
                margin: 0 auto;
                border: none;
                box-shadow: none;
            }

            .back-link, .btn {
                display: none; /* Hide links and buttons during print */
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ticket-card">
            <div class="ticket-header">
                <h2>Train Ticket</h2>
            </div>
            <div class="ticket-content">
                <!-- PnrNo -->
                <div class="row">
                    <span class="label">PnrNo:</span>
                    <span class="value"><asp:Label ID="lblPnrNo" runat="server" Text="" /></span>
                </div>

                <!-- Train Name -->
                <div class="row">
                    <span class="label">Train Name:</span>
                    <span class="value"><asp:Label ID="lblTrainName" runat="server" Text="" /></span>
                </div>

                <!-- First Name -->
                <div class="row">
                    <span class="label">First Name:</span>
                    <span class="value"><asp:Label ID="lblFirstName" runat="server" Text="" /></span>
                </div>

                <!-- Last Name -->
                <div class="row">
                    <span class="label">Last Name:</span>
                    <span class="value"><asp:Label ID="lblLastName" runat="server" Text="" /></span>
                </div>

                <!-- Seat No -->
                <div class="row">
                    <span class="label">Seat No:</span>
                    <span class="value"><asp:Label ID="lblSeatNo" runat="server" Text="" /></span>
                </div>

                <!-- Travel Date -->
                <div class="row">
                    <span class="label">Travel Date:</span>
                    <span class="value"><asp:Label ID="lblTravelDate" runat="server" Text="" /></span>
                </div>

                <!-- Travel Time -->
                <div class="row">
                    <span class="label">Travel Time:</span>
                    <span class="value"><asp:Label ID="lblTravelTime" runat="server" Text="" /></span>
                </div>

                <!-- Mobile -->
                <div class="row">
                    <span class="label">Mobile:</span>
                    <span class="value"><asp:Label ID="lblMobile" runat="server" Text="" /></span>
                </div>
            </div>

            <div class="ticket-footer">
                <p>Thank you for booking with RailYatri. Happy journey!</p>
                <a class="back-link" href="Default.aspx">Go Back</a>
                <button type="button" onclick="window.print();" class="btn btn-primary bg-secondary mt-3">Download Ticket</button>
            </div>
        </div>
    </form>
</body>
</html>

