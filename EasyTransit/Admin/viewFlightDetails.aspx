<%@ Page Title="Flight details" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="viewFlightDetails.aspx.cs" Inherits="EasyTransit.Admin.viewFlightDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container" style="padding:0px;">
                <div style="text-align:center;height:auto;padding:9px;background-color:teal; ">

                        <h2 style="color:white;">Flight Details Information</h2>
                    </div>
                    <hr style="height:2px; background-color:#272323;"/>
                    <div>
                        <asp:GridView ID="ViewFlight" runat="server" AllowPaging="True" CssClass="table table-responsive table-bordered table-condensed" 
                            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="6">
                            <AlternatingRowStyle BackColor="Window" ForeColor="#284775" />
                            <EditRowStyle BackColor="#008080" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#008080" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#008080" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                </div>
        </div>
</asp:Content>
