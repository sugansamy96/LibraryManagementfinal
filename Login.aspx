<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LibraryManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    
<body>
<script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />

             <form id="form1" runat="server">  
       <div class="container">  
           <div class="row">  
               <div class="col-lg-5 col-md-6 col-sm-8 col-xl-12 " style="margin: auto; float: initial; padding-top: 12%">  
                   <div class="row userInfo">  
  
                       <div class="panel panel-default ">  
                           <div class="panel-heading">  
                               <h3 class="panel-title" style="text-align: center; font-weight: bold">  
                                   <a class="collapseWill">Login</a>  
                               </h3>  
                           </div>  
                           <div id="collapse1" class="panel-collapse collapse in">  
                               <div class="panel-body">  
                                   <fieldset>  
                                       <div class="form-group">  
                                           <div class="col-md-"></div>  
                                           <label class="col-md-12 control-label" for="prependedcheckbox">  
                                               User Name 
                                           </label>  
                                           <div class="col-md-12">  
                                               <div class="input-group">  
                                                   <span class="input-group-addon">  
                                                       <i class="fa fa-user"></i>  
                                                   </span>  
                                                   <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder="Enter User Name" runat="server"></asp:TextBox>  
                                               </div>  
                                               <asp:Label ID="lblErrUserName" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>  
                                           </div>  
  
                                           <label class="col-md-12 control-label" for="prependedcheckbox">  
                                               Password  
                                           </label>  
                                           <div class="col-md-12">  
                                               <div class="input-group">  
                                                   <span class="input-group-addon">  
                                                       <i class="fa fa-lock"></i>  
                                                   </span>  
                                                   <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Enter Your Password" runat="server" TextMode="Password"></asp:TextBox>  
                                               </div>  
                                               <asp:Label ID="lblErrPassword" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>  
                                           </div>  
  <asp:Label ID="Label1" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>
                                           <div class="col-md-12">  
                                               
                                               <div class="col-lg-6">  
                                                   <div class="input-group" style="width: 100%">  
                                                       <asp:Button ID="btnLogin" CssClass="btn btn-success" Text="Login" OnClientClick="return Validation()" runat="server" Style="width: 100%" OnClick="btnLogin_Click" />  
                                                   </div>  
                                               </div>  
                                           </div>  
                                       </div>  
                                   </fieldset>  
  
                               </div>  
                           </div>  
  
                           <div class="panel-heading">  
                               <%--<div class="panel-title" style="text-align: right">  
                                   <a class="collapseWill" href="SellerForgetPassword.aspx" style="font-size: x-small">Forgot Username or Password?  
                                   </a>  
                               </div> --%> 
                           </div>  
                       </div>  
                   </div>  
               </div>  
           </div>  
       </div>  
   </form>    
    <script > 
        function Validation() {
            var objValid = true;
            var objUserName = $("[id$=txtUserName]").val();
            var objPassword = $("[id$=txtPassword]").val();
            if (objUserName == "") {
                $('[id$=lblErrUserName]').text("User Name is required");
                $('[id$=lblErrUserName]').css("color", "#FF0000");
                $("[id$=txtUserName]").addClass("Error-control");
                objValid = false;  
            } 
            if (objPassword == "") {
                $('[id$=lblErrPassword]').text("Password is required");
                $('[id$=lblErrPassword]').css("color", "#FF0000");
                $("[id$=txtPassword]").addClass("Error-control");
                objValid = false;
            } 
            return objValid;
        }


    </script>  
</body>
</html>
