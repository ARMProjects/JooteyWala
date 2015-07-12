<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Master/JooteyWala.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JooteyWala.Web.General.Login" %>
<asp:Content ID="mainHolder" ContentPlaceHolderID="mainHolder" runat="server">
    <script type="text/javascript">

    function Allvalidate() {
        debugger;
        var ValidationSummary = "";
        ValidationSummary += EmailValidation();
        //            ValidationSummary += PasswordValidation();
        if (ValidationSummary != "") {
            alert(ValidationSummary);
            return false;
        }
        else {
            // alert("Information submited successfully");
            return true;
        }
    }


    function EmailValidation() {
        var userid;
        var controlId = document.getElementById("<%=txtEmail.ClientID %>");
        userid = controlId.value;
        var val = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
        if (userid == "") {
            controlId.focus();
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


    function PasswordValidation() {
        var userid;
        var controlId = document.getElementById("<%=txtPassword.ClientID %>");
        userid = controlId.value;
        // var val = /^[a-zA-Z ]+$/
        var val = /^([a-zA-Z0-9~!@#$%^&*]*)$/
        if (userid == "") {
            return ("Please Enter Password" + "\n");
        }
        else if (val.test(userid)) {
            return "";

        }
        else {
            controlId.focus();
            return ("Password accepts alphabets numbers and special characters" + "\n");
        }
    }
    </script>

        <div class="login">
        <div class="wrap">
            <div class="col_1_of_login span_1_of_login">
                <h4 class="title">
                    New Customers</h4>
                <h5 class="sub_title">
                    Register Account</h5>
                <p>A lot of us have a ton of data stored in Google's services, but if you want to migrate 
                    to a new Google account, you'll need to do some digging. Here's how to migrate your 
                    data from Google's most popular services (Gmail, Google Calendar, Docs, Reader, Voice, 
                    Blogger, and YouTube) from your current account (hereafter referred to as "Account 1") 
                    to your new account (hereafter, "Account 2") while incurring the least amount of data loss.
                    </p>
                <div class="button1">
                    <a href="">
                        <%--<input type="submit" name="Submit" value="Continue">--%>
                        <asp:Button ID="btnContinue" runat="server" Text="Continue" OnClick="btnContinue_Click" />
                    </a>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="col_1_of_login span_1_of_login">
                <div class="login-title">
                    <h4 class="title">
                        Registered Customers</h4>
                    <div class="comments-area">
                        <div>
                            <%--<form>--%>
                            <p>
                                <label>
                                    Email</label>
                                <span>*</span>
                                <%--	<input type="text" value="">--%>
                                <%--   <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>--%>
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            </p>
                            <p>
                                <label>
                                    Password</label>
                                <span>*</span>
                                <%-- <input type="password" value="">--%>
                                  <asp:textbox id="txtPassword" runat="server" textmode="password"></asp:textbox>
                               <%-- <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br />
                                <asp:RegularExpressionValidator ID="Regex2" runat="server" ControlToValidate="txtPassword"
                                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
                                    ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character"
                                    ForeColor="Red" />--%>
                            </p>
                            <p id="login-form-remember">
                                <label>
                                    <a href="#">Forget Your Password ? </a>
                                    <asp:Label ID="lblMessage" Font-Bold="true" ForeColor="Red" runat="server" Text="Please enter a valid email"
                                        Visible="false"></asp:Label>
                                </label>
                            </p>
                            <p>
                                <%--<input type="submit" value="Login">--%>
                                <%--<asp:Button ID="btnRegister" runat="server" Text="Register" OnClientClick ="return Allvalidate()"  OnClick="btnRegister_Click" />--%>
                                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClientClick="return Allvalidate()"
                                    OnClick="btnLogin_Click" />
                            </p>
                            <%-- <p id="Login1">
                            <label>
                                Please enter a valid email
                            </label>
                        </p>--%>
                            <%--	</form>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
