<%@ Page Title="Add New Bus" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="addNewBus.aspx.cs" Inherits="EasyTransit.Admin.addNewBus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        

        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
        function MinLength(sender, args) {
            args.IsValid = (args.Value.length >= 10);
        }



    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="position:relative;background-color:#00778A;padding:0px;">
        <div class="ad-Bus">
                <div class="Bus-header">Add New Bus Informations</div>
                     <div class="Bus-body" style="position:center;">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Company Name" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                            <asp:DropDownList ID="DropDownListcom" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="bcompany_name" DataValueField="bcompany_id">
                                <asp:ListItem Value="Select Company Name">Select Company Name</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mycon %>" DeleteCommand="DELETE FROM [Bus_company] WHERE [bcompany_id] = @original_bcompany_id AND [bcompany_name] = @original_bcompany_name" InsertCommand="INSERT INTO [Bus_company] ([bcompany_name]) VALUES (@bcompany_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bus_company]" UpdateCommand="UPDATE [Bus_company] SET [bcompany_name] = @bcompany_name WHERE [bcompany_id] = @original_bcompany_id AND [bcompany_name] = @original_bcompany_name">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_bcompany_id" Type="Int32" />
                                    <asp:Parameter Name="original_bcompany_name" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="bcompany_name" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="bcompany_name" Type="String" />
                                    <asp:Parameter Name="original_bcompany_id" Type="Int32" />
                                    <asp:Parameter Name="original_bcompany_name" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:RequiredFieldValidator ID="rfvcompany" ErrorMessage="please Select Bus company" 
                                ControlToValidate="DropDownListcom" InitialValue="Select Company Name" ForeColor="Red" runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Bus Number" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                    &nbsp;<asp:Label ID="lblbusid" runat="server" CssClass="form-control" style="width: 50%;"></asp:Label> 
                        </div>
                        <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Bus Category" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                            <asp:DropDownList ID="DropDownListcetagory" CssClass="form-control" runat="server">
                                <asp:ListItem>Select Bus Type</asp:ListItem>
                                <asp:ListItem>AC</asp:ListItem>
                                <asp:ListItem>Non-AC</asp:ListItem>
                            </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="rfvbustype" ErrorMessage="please Select Bus Type" 
                                ControlToValidate="DropDownListcetagory" InitialValue="Select Bus Type" ForeColor="Red" runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                          <%--<div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Route ID" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                            <asp:DropDownList ID="DropDownListroute" runat="server" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvroute" ErrorMessage="please Select Bus Route" 
                                ControlToValidate="DropDownListroute" InitialValue="Select Bus Route ID" ForeColor="Red" runat="server">
                            </asp:RequiredFieldValidator>
                            </div>--%>
                       <%--- <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Fare" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                    <asp:TextBox ID="txtBusFar" runat="server" onkeypress="return isNumber(event)" CssClass="form-control" placeholder="Provide the Estimate Fare"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvfare" ErrorMessage="please Select Bus Fare" 
                                ControlToValidate="txtBusFar"  ForeColor="Red" runat="server">
                            </asp:RequiredFieldValidator>
                            </div>------%> 
                        <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Capacity" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                    <asp:TextBox ID="txtBusCap" runat="server" onkeypress="return isNumber(event)" CssClass="form-control" placeholder="Provide Bus Capacity Info"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvcapacity" ErrorMessage="please Select Bus Capacity" 
                          ControlToValidate="txtBusCap" ForeColor="Red" runat="server">
                         </asp:RequiredFieldValidator>
                     </div>
                     <asp:Button runat="server" Text="Add New Bus" CssClass="btn btn-primary btn-block" style="font-size:16px;margin-top:30px;" OnClick="btnAddBus" />
                </div>
           </div>
       </div>
</asp:Content>
