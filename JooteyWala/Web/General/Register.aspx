<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Master/JooteyWala.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JooteyWala.Web.General.Register" %>
<asp:Content ID="mainHoderContent" ContentPlaceHolderID="mainHolder" runat="server">
    
    <script type="text/javascript">

        function Allvalidate() {
            debugger;
            var ValidationSummary = "";
            ValidationSummary += FirstNameValidation();
            ValidationSummary += LastNameValidation();
            ValidationSummary += EmailValidation();
            ValidationSummary += UsernameValidation();
            ValidationSummary += PasswordValidation();
            // ValidationSummary += PhonenoValidation();
            if (ValidationSummary != "") {
                alert(ValidationSummary);
                return false;
            }
            else {
                // alert("Information submited successfully");
                return true;
            }
        }
        //    function PhonenoValidation() {
        //        var userid;
        ////        var controlId = document.getElementById
        //        userid = controlId.value;
        //        var val;
        //        val = /^[0-9]+$/;
        //        var digits = /\d(10)/;
        //        if (userid == "") {
        //            return ("Please Enter PhoneNo" + "\n");
        //        }
        //        else if (val.test(userid)) {
        //            return "";
        //        }

        //        else {
        //            return ("PhoneNo should be only in digits" + "\n");
        //        }
        //    }
        function FirstNameValidation() {
            var userid;
            var controlId = document.getElementById("<%=txtFirstName.ClientID %>");
            userid = controlId.value;
            var val = /^[a-zA-Z ]+$/
            if (userid == "") {
                return ("Please Enter First Name" + "\n");
            }
            else if (val.test(userid)) {
                return "";

            }
            else {
                controlId.focus();
                return ("Name accepts only spaces and characters" + "\n");
            }
        }

        function LastNameValidation() {
            var userid;
            var controlId = document.getElementById("<%=txtLastName.ClientID %>");
            userid = controlId.value;
            var val = /^[a-zA-Z ]+$/
            if (userid == "") {
                return ("Please Enter Last Name" + "\n");
            }
            else if (val.test(userid)) {
                return "";

            }
            else {
                controlId.focus();
                return ("Name accepts only spaces and characters" + "\n");
            }
        }

        function EmailValidation() {
            var userid;
            var controlId = document.getElementById("<%=txtEmail.ClientID %>");
            userid = controlId.value;
            var val = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
            if (userid == "") {
                return ("Please Enter Email Id" + "\n");
            }
            else if (val.test(userid)) {
                return "";
            }

            else {
                controlId.focus();
                return ("Email should be in this form example: xyz@abc.com" + "\n");
            }

        }

        function UsernameValidation() {
            var userid;
            var controlId = document.getElementById("<%=txtUsername.ClientID %>");
            userid = controlId.value;
            var val = /^[a-zA-Z ]+$/
            if (userid == "") {
                return ("Please Enter Username" + "\n");
            }
            else if (val.test(userid)) {
                return "";

            }
            else {
                controlId.focus();
                return ("Name accepts only spaces and characters" + "\n");
            }
        }

        function PasswordValidation() {
            var userid;
            var controlId = document.getElementById("<%=txtPassword.ClientID %>");
            userid = controlId.value;
            var val = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/
            if (userid == "") {
                return ("Please Enter Password" + "\n");
            }
            else if (val.test(userid)) {
                return "";

            }
            else {
                controlId.focus();
                return ("Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" + "\n");
            }
        }
    </script>

    <div class="register_account">
        <div class="wrap">
            <div class="col_1_of_login span_1_of_login">
                <div class="login-title">
                    <h4 class="title">
                        Create an Account</h4>
                    <div class="comments-area">
                        <div>
                            <%--<form>--%>
                            <p>
                                <label>
                                    First Name</label>
                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            </p>
                            <p>
                                <label>
                                    Last Name</label>
                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                            </p>
                            <p>
                                <label>
                                    Email Address</label>
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                 <asp:Label ID="lblMessage" Font-Bold="true" ForeColor="Red" runat="server" Text="Email id already in use" Visible="false"></asp:Label>
                            </p>
                            <p>
                                <label>
                                    User Name</label>
                                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            </p>
                            <p>
                                <label>
                                    Password</label>
                              <%--  <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>--%>
                                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                              <%--  <asp:RegularExpressionValidator ID="Regex2" runat="server" ControlToValidate="txtPassword"
                                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
                                    ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character"
                                    ForeColor="Red" ValidationGroup="a"/>--%>
                            </p>
                            <p>
                               <%-- <asp:Label ID="lblMessage" Font-Bold="true" ForeColor="Red" runat="server" Text="Email id already in use" Visible="false"></asp:Label>--%>
                                <%--<input type="submit" value="Login">--%>
                                <asp:Button ID="btnRegister" runat="server" Text="Register"  OnClientClick ="return Allvalidate()"  OnClick="btnRegister_Click" />
                            </p>
                            <%--	</form>--%>
                        </div>
                        <%--  <div>
                       
                        <p>
                         
                          <asp:TextBox ID="txtFirstName" runat="server" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}"></asp:TextBox>
                        </p>
                        <p>
                           
                             <asp:TextBox ID="txtLastName" runat="server" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}"></asp:TextBox>
                        </p>
                        <p>
                           
                            <asp:TextBox ID="txtEmail" runat="server" value="Email Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email Address';}"></asp:TextBox>
                        </p>
                        <p>
                           
                           <asp:TextBox ID="txtUsername" runat="server" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}"></asp:TextBox>
                        </p>
                        <p>
                           
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}"></asp:TextBox>
                        </p>
                       
                        <p>
                            
                            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                        </p>
                       
                      
                    </div>--%>
                    </div>
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>

</asp:Content>
