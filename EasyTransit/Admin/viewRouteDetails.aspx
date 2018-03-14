<%@ Page Title="Route Details" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="viewRouteDetails.aspx.cs" Inherits="EasyTransit.Admin.viewRouteDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="container" style="padding:0px;">
                <div style="text-align:center;height:auto;padding:9px;background-color:teal; ">

                        <h2 style="color:white;">Route Details Information</h2>
                    </div>
                    <hr style="height:2px; background-color:#272323;"/>
                    <div>
                        <asp:GridView ID="ViewRoute" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-responsive table-bordered table-condensed" PageSize="6">
                             <EditRowStyle BackColor="#008080" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="Green" />
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
