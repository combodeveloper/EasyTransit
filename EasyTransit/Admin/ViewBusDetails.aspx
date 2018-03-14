<%@ Page Title="Bus Details" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ViewBusDetails.aspx.cs" Inherits="EasyTransit.Admin.ViewBusDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="container" style="padding:0px;">
            <div style="text-align:center;height:auto;padding:9px;background-color:teal;width:auto; ">

                <h2 style="color:white;">Bus Details Information</h2>
            </div>
            <hr style="height:2px; background-color:#272323;"/>
            <div>
                <asp:GridView ID="ViewBus" runat="server"
                    AllowPaging="True" CssClass="table table-responsive table-bordered table-condensed"
                    OnPageIndexChanging="ViewBus_PageIndexChanging" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" ForeColor="#333333" GridLines="None" PageSize="6">
                    <AlternatingRowStyle BackColor="Window" />

                    <EditRowStyle BackColor="#008080" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#008080" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />

                </asp:GridView>
            </div>
  </div>
</asp:Content>

