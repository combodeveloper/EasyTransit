<%@ Page Title="Train Details" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="viewTrainDetails.aspx.cs" Inherits="EasyTransit.Admin.viewTrainDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="padding:0px;">
        <div style="text-align:center;height:auto;padding:9px;background-color:teal;width:auto; ">

                <h2 style="color:white;">Train Details Information</h2>
            </div>
            <hr style="height:2px; background-color:#272323;"/>
        <div>
            <asp:GridView ID="ViewTrain" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataKeyNames="Train_ID" DataSourceID="SqlDataSource1"
                CssClass="table table-responsive table-bordered table-condensed" PageSize="6">
                <Columns>
                    <asp:TemplateField HeaderText="Company Name" SortExpression="Company_name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Company_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Company_name") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterStyle BackColor="#669999" ForeColor="#FFFF66" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Train ID" SortExpression="Train_ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Train_ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Train_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Train Type" SortExpression="Train_Type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Train_Type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Train_Type") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Route ID" SortExpression="Route_ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Route_ID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Route_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fare" SortExpression="Fare">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Fare") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Fare") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Capacity" SortExpression="Capacity">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Capacity") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Capacity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actions" ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <ControlStyle CssClass="btn btn-primary" />
                    </asp:TemplateField>
                </Columns>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mycon %>"
                DeleteCommand="DELETE FROM [TrainDetails] WHERE [Train_ID] = @original_Train_ID AND [Company_name] = @original_Company_name AND [Train_Type] = @original_Train_Type AND [Route_ID] = @original_Route_ID AND [Fare] = @original_Fare AND [Capacity] = @original_Capacity"
                InsertCommand="INSERT INTO [TrainDetails] ([Company_name], [Train_ID], [Train_Type], [Route_ID], [Fare], [Capacity]) VALUES (@Company_name, @Train_ID, @Train_Type, @Route_ID, @Fare, @Capacity)"
                OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TrainDetails]" 
                UpdateCommand="UPDATE [TrainDetails] SET [Company_name] = @Company_name, [Train_Type] = @Train_Type, [Route_ID] = @Route_ID, [Fare] = @Fare, [Capacity] = @Capacity WHERE [Train_ID] = @original_Train_ID AND [Company_name] = @original_Company_name AND [Train_Type] = @original_Train_Type AND [Route_ID] = @original_Route_ID AND [Fare] = @original_Fare AND [Capacity] = @original_Capacity">
                <DeleteParameters>
                    <asp:Parameter Name="original_Train_ID" Type="String" />
                    <asp:Parameter Name="original_Company_name" Type="String" />
                    <asp:Parameter Name="original_Train_Type" Type="String" />
                    <asp:Parameter Name="original_Route_ID" Type="String" />
                    <asp:Parameter Name="original_Fare" Type="Double" />
                    <asp:Parameter Name="original_Capacity" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Company_name" Type="String" />
                    <asp:Parameter Name="Train_ID" Type="String" />
                    <asp:Parameter Name="Train_Type" Type="String" />
                    <asp:Parameter Name="Route_ID" Type="String" />
                    <asp:Parameter Name="Fare" Type="Double" />
                    <asp:Parameter Name="Capacity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Company_name" Type="String" />
                    <asp:Parameter Name="Train_Type" Type="String" />
                    <asp:Parameter Name="Route_ID" Type="String" />
                    <asp:Parameter Name="Fare" Type="Double" />
                    <asp:Parameter Name="Capacity" Type="Int32" />
                    <asp:Parameter Name="original_Train_ID" Type="String" />
                    <asp:Parameter Name="original_Company_name" Type="String" />
                    <asp:Parameter Name="original_Train_Type" Type="String" />
                    <asp:Parameter Name="original_Route_ID" Type="String" />
                    <asp:Parameter Name="original_Fare" Type="Double" />
                    <asp:Parameter Name="original_Capacity" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
