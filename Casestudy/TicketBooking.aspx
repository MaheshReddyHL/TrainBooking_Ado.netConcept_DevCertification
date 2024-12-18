<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketBooking.aspx.cs" Inherits="Casestudy.CreateBooking" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Create Train Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }

        .form-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 420px;
            margin: 0 auto;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px 0;
        }

        input[type="text"],
        input[type="date"],
        input[type="time"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn-submit {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }

        .error-message {
            color: red;
            font-size: 12px;
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

       /* CSS for Animation */
    .train-container {
        position: relative;
        overflow: hidden;
        height: 150px; /* Adjust height as needed */
    }

    .train-image {
        position: absolute;
        width: auto;
        height: 100px; /* Adjust train size */
        animation: slideTrain 8s linear infinite;
    }

    @keyframes slideTrain {
        0% {
            transform: translateX(100%);
        }
        100% {
            transform: translateX(-100%);
        }
    }
   </style>
</head>
<body>
   

    <form id="form1" runat="server">
        <div class="form-container">
            <!-- Sliding Train Animation -->
            <div class="train-container my-5">
                <img src="Images/Train.gif" alt="Moving Train" class="train-image" />
            </div>
            <h2 class="bg-light ">Train Ticket Booking</h2>
            <table>
                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                            ErrorMessage="First Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                            ErrorMessage="Last Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Seat No:</td>
                    <td>
                        <asp:TextBox ID="txtSeatNo" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSeatNo" runat="server" ControlToValidate="txtSeatNo"
                            ErrorMessage="Seat No is required" CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Train Name:</td>
                    <td>
                        <asp:TextBox ID="txtTrainName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTrainName" runat="server" ControlToValidate="txtTrainName"
                            ErrorMessage="Train Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Travel Date:</td>
                    <td>
                        <asp:TextBox ID="txtTravelDate" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTravelDate" runat="server" ControlToValidate="txtTravelDate"
                            ErrorMessage="Travel Date is required" CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Travel Time:</td>
                    <td>
                        <asp:TextBox ID="txtTravelTime" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTravelTime" runat="server" ControlToValidate="txtTravelTime"
                            ErrorMessage="Travel Time is required" CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mobile:</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                            ErrorMessage="Mobile is required" CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
           <div class="form-buttons">
       <a href="Default.aspx">Go Back</a>
     <asp:Button ID="btnSubmit" runat="server" Text="Book" OnClick="btnSubmit_Click" />
   
 </div>
            
           
        </div>
    </form>
</body>
</html>
