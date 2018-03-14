<%@ Page Title="Add New Train" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="addNewTrain.aspx.cs" Inherits="EasyTransit.Admin.addNewTrain" %>
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
            <div class="Bus-header">Add New Train Informations</div>
            <div class="Bus-body" style="position:center;">
                    <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Company Name" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
               <asp:DropDownList ID="DropDownListcom" runat="server" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvcompany" ErrorMessage="please Select Train company" 
                            ControlToValidate="DropDownListcom" InitialValue="Select Company Name" ForeColor="Red" runat="server">
                        </asp:RequiredFieldValidator>
                    </div>
                     <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Train Number" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                <asp:TextBox ID="txtTrainNum" runat="server" CssClass="form-control" placeholder="Provide the Train ID"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfvtrainid" ErrorMessage="Please Provide Train ID" 
                             ControlToValidate="txtTrainNum" ForeColor="Red" runat="server">
                         </asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="train Category" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                <asp:DropDownList ID="DropDownListcetagory" CssClass="form-control" runat="server">
                            <asp:ListItem>Select Train Type</asp:ListItem>
                            <asp:ListItem>Intercity</asp:ListItem>
                            <asp:ListItem>Demo</asp:ListItem>
                            <asp:ListItem>Mail</asp:ListItem>
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="rfvtraintype" ErrorMessage="please Select Train Type" 
                            ControlToValidate="DropDownListcetagory" InitialValue="Select Train Type" ForeColor="Red" runat="server">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Route ID" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                         <asp:DropDownList ID="DropDownListroute" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvroute" ErrorMessage="please Select Train Route" 
                            ControlToValidate="DropDownListroute" InitialValue="Select Train RouteId" ForeColor="Red" runat="server">
                        </asp:RequiredFieldValidator>
                        </div>
                    <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Fare" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                <asp:TextBox ID="txtTrainFar" runat="server" onkeypress="return isNumber(event)" CssClass="form-control" placeholder="Provide the Estimate Fare"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvfare" ErrorMessage="please Select Train Fare" 
                            ControlToValidate="txtTrainFar"  ForeColor="Red" runat="server">
                        </asp:RequiredFieldValidator>
                        </div>
                    <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Capacity" Style="font-size: 16px;font-weight: inherit;"></asp:Label>
                <asp:TextBox ID="txtTrainCap" runat="server" onkeypress="return isNumber(event)" CssClass="form-control" placeholder="Provide Train Capacity Info"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfvcapacity" ErrorMessage="please Select Train Capacity" 
                      ControlToValidate="txtTrainCap" ForeColor="Red" runat="server">
                     </asp:RequiredFieldValidator>
                 </div>
                 <asp:Button runat="server" Text="Add New Train" PostBackUrl="viewTrainDetails.aspx" CssClass="btn btn-primary btn-block" style="font-size:16px;margin-top:30px;" />
            </div>
       </div>
    </div>
</asp:Content>
