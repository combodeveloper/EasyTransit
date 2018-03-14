<%@ Page Title="Add New Flight" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="addNewFlight.aspx.cs" Inherits="EasyTransit.Admin.addNewFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
        

        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
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
            <div class="Bus-header">Add New Flight Informations</div>
            <div class="Bus-body" style="position:center;">
                    <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Company Name" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                 <asp:DropDownList ID="DropDownListcom" runat="server" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvcompany" ErrorMessage="please Select Flight company" 
                            ControlToValidate="DropDownListcom" InitialValue="Select Company Name" ForeColor="Red" runat="server">
                        </asp:RequiredFieldValidator>
                    </div>
                     <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Bus Number" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                <asp:TextBox ID="txtFlightNum" runat="server" CssClass="form-control" placeholder="Provide the Flight ID"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvflightid" ErrorMessage="Please Provide Flight ID" 
                             ControlToValidate="txtFlightNum" ForeColor="Red" runat="server">
                         </asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Bus Category" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                 <asp:DropDownList ID="DropDownListcetagory" CssClass="form-control" runat="server">
                            <asp:ListItem>Select flight Type</asp:ListItem>
                            <asp:ListItem>Local</asp:ListItem>
                            <asp:ListItem>International</asp:ListItem>
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="rfvflighttype" ErrorMessage="please Select Flight Type" 
                            ControlToValidate="DropDownListcetagory" InitialValue="Select flight Type" ForeColor="Red" runat="server">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Route ID" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                 <asp:DropDownList ID="DropDownListroute" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvroute" ErrorMessage="please Select Flight Route" 
                            ControlToValidate="DropDownListroute" InitialValue="Select Flight RouteId" ForeColor="Red" runat="server">
                        </asp:RequiredFieldValidator>
                        </div>
                    <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Fare" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                <asp:TextBox ID="txtFlightFar" runat="server" onkeypress="return isNumber(event)" CssClass="form-control" placeholder="Provide the Estimate Fare"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvfare" ErrorMessage="please Select Flight Fare" 
                            ControlToValidate="txtFlightFar"  ForeColor="Red" runat="server">
                        </asp:RequiredFieldValidator>
                        </div>
                    <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Capacity" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                <asp:TextBox ID="txtFlightCap" runat="server"  onkeypress="return isNumber(event)" CssClass="form-control" placeholder="Provide Flight Capacity Info"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvcapacity" ErrorMessage="please Select flight Capacity" 
                      ControlToValidate="txtFlightCap" ForeColor="Red" runat="server">
                     </asp:RequiredFieldValidator>
                 </div>
                 <asp:Button runat="server" Text="Add New Flight" PostBackUrl="viewFlightDetails.aspx" CssClass="btn btn-primary btn-block" style="font-size:16px;margin-top:30px;" />
            </div>
       </div>
    </div>
</asp:Content>
