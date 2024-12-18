<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Casestudy._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5">
        <h2 class="text-center mb-4">List Of Bookings</h2>
        <h4 class="text-center mb-4">Your one-stop solution for booking train tickets.</h4>

        <!-- Create New Booking Button -->
        <div class="text-start mb-3">
            <button class="btn btn-primary" onclick="window.location.href='TicketBooking.aspx'; return false;">Add New Booking</button>
        </div>

   

        <!-- GridView Table -->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered-primary table-hover border-primary">
            <Columns>
                <asp:BoundField DataField="PnrNo" HeaderText="PnrNo" SortExpression="PnrNo" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="SeatNo" HeaderText="Seat No" SortExpression="SeatNo" />
                <asp:BoundField DataField="TrainName" HeaderText="Train Name" SortExpression="TrainName" />
                <asp:BoundField DataField="TravelDate" HeaderText="Travel Date" SortExpression="TravelDate" />
                <asp:BoundField DataField="TravelTime" HeaderText="Travel Time" SortExpression="TravelTime" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="ViewBooking.aspx?PnrNo=<%# Eval("PnrNo") %>" class="btn btn-info btn-sm">View</a> 
                        <a href="EditBooking.aspx?PnrNo=<%# Eval("PnrNo") %>" class="btn btn-warning btn-sm">Edit</a> 
                        <a href="CancelBooking.aspx?PnrNo=<%# Eval("PnrNo") %>" class="btn btn-danger btn-sm">Cancel</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
