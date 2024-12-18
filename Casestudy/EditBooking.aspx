<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBooking.aspx.cs" Inherits="Casestudy.EditBooking" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Edit Train Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .booking-form {
            background: #ffffff;
            border: 1px solid #ddd;
            margin-top:20px;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .booking-form h2 {
            text-align: center;
            color: #007bff;
            margin-top:20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }

        .form-group input[type="text"],
        .form-group input[type="date"],
        .form-group input[type="time"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="date"]:focus,
        .form-group input[type="time"]:focus {
            outline: none;
            border-color: #007bff;
        }

        .form-buttons {
            text-align: center;
            margin-top: 20px;
        }

        .form-buttons input[type="submit"],
        .form-buttons a {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
        }

        .form-buttons a {
            background-color: #6c757d;
        }

        .form-buttons input[type="submit"]:hover,
        .form-buttons a:hover {
            background-color: #0056b3;
        }

        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="booking-form">
            <h2>Edit Train Booking</h2>

            <div class="form-group">
                <label for="txtFirstName">First Name:</label>
                <asp:TextBox ID="txtFirstName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="First Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="Last Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtSeatNo">Seat No:</label>
                <asp:TextBox ID="txtSeatNo" runat="server" />
                <asp:RequiredFieldValidator ID="rfvSeatNo" runat="server" ControlToValidate="txtSeatNo"
                    ErrorMessage="Seat No is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtTrainName">Train Name:</label>
                <asp:TextBox ID="txtTrainName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvTrainName" runat="server" ControlToValidate="txtTrainName"
                    ErrorMessage="Train Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtTravelDate">Travel Date:</label>
                <asp:TextBox ID="txtTravelDate" runat="server" TextMode="Date" />
                <asp:RequiredFieldValidator ID="rfvTravelDate" runat="server" ControlToValidate="txtTravelDate"
                    ErrorMessage="Travel Date is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtTravelTime">Travel Time:</label>
                <asp:TextBox ID="txtTravelTime" runat="server" TextMode="Time" />
                <asp:RequiredFieldValidator ID="rfvTravelTime" runat="server" ControlToValidate="txtTravelTime"
                    ErrorMessage="Travel Time is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtMobile">Mobile:</label>
                <asp:TextBox ID="txtMobile" runat="server" />
                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                    ErrorMessage="Mobile is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-buttons">
                <a href="Default.aspx">Go Back</a>
                <asp:Button ID="btnUpdate" runat="server" Text="Save" OnClick="BtnUpdate_Click" />
            </div>
        </div>
    </form>
</body>
</html>
