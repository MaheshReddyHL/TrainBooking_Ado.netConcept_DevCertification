<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelBooking.aspx.cs" Inherits="Casestudy.DeleteBooking" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Delete Train Booking</title>
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

        .delete-confirmation {
            background: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 100%;
            max-width: 400px;
        }

        .delete-confirmation h2 {
            color: #dc3545;
        }

        .form-buttons {
            margin-top: 20px;
        }

        .form-buttons input[type="submit"],
        .form-buttons a {
            background-color: #dc3545;
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

        .form-buttons input[type="submit"]:hover {
            background-color: #c82333;
        }

        .form-buttons a:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="delete-confirmation">
            <h2>Confirm Booking Cancellation?</h2>
            <div class="form-buttons">
                <asp:Button ID="btnDelete" runat="server" Text="Confirm" OnClick="btnDelete_Click" />
                <a href="Default.aspx">Cancel</a>
            </div>
        </div>
    </form>
</body>
</html>
