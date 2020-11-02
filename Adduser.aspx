<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/LMaster.Master" CodeBehind="Adduser.aspx.cs" Inherits="LibraryManagement.Adduser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   <form runat="server">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 col-sm-8 col-xl-12 " style="float: initial;padding-top: 12%;margin-left: 153px;margin-top: -93px;">
                    <div class="row userInfo">

                        <div class="panel panel-default ">
                            <div class="panel-heading">
                                <h3 class="panel-title" style="text-align: center; font-weight: bold">
                                    <a class="collapseWill">Add User</a>
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
                                                        <i class="fa fa-user"></i>
                                                    </span>
                                                    <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="lblErrAuthorName" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>
                                            </div>

                                            <label class="col-md-12 control-label" for="prependedcheckbox">
                                                EmailId
                                            </label>
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user"></i>
                                                    </span>
                                                    <asp:TextBox ID="txtEmailid" CssClass="form-control" placeholder="Enter Email id" runat="server"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="lblEmailid" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>
                                            </div>
                                            <label class="col-md-12 control-label" for="prependedcheckbox">
                                                User Type 
                                            </label>
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user"></i>
                                                    </span>

                                                    <asp:DropDownList ID="ddlUserType" CssClass="form-control" placeholder="Enter User Type" runat="server">
                                                        <asp:ListItem Value="">Select User Type</asp:ListItem>
                                                        <asp:ListItem>Admin</asp:ListItem>
                                                        <asp:ListItem>User</asp:ListItem>

                                                    </asp:DropDownList>

                                                </div>
                                                <asp:Label ID="Label1" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>
                                            </div>

                                            <div class="col-md-12">

                                                <div class="col-lg-6">
                                                    <div class="input-group" style="width: 100%">
                                                        <asp:Button ID="btnSubmit" CssClass="btn btn-success" Text="Submit" OnClientClick="return Validation()" runat="server" Style="width: 100%" OnClick="btnSubmit_Click" />
                                                    </div>
                                                </div>
                                            </div>




                                        </div>
                                    </fieldset>

                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>


    <script>
        function Validation() {

            var UserName, Password, Emailid, Usertype;


            UserName = document.getElementById("txtUserName").value;
            Password = document.getElementById("txtPassword").value;
            Emailid = document.getElementById("txtEmailid").value;
            Usertype = document.getElementById("ddlUserType").value;


            //if (BookName == '' && BookCategory == '' && Publisher == '' && AuthorName == '' && BookImage == '')
            //{
            //    alert("Enter All Fields");
            //    return false;
            //}
            if (UserName == '') {
                alert("Please Enter UserName");
                return false;
            }

            if (Password == '') {
                alert("Please Enter Password");
                return false;
            }
            if (Emailid == '') {
                alert("Please Enter Emailid");
                return false;
            }
            //var reg = \^ ([A - Za - z0 -9_\-\.]) +@([A - Za - z0 - 9]) +.([A - Za - z]{ 2, 4});

            //if (reg.test(Emailid.value) == false) {
            //    alert('Invalid Email Address');
            //    return false;
            //}


            if (Usertype == '') {
                alert("Please Select Usertype");
                return false;
            }


        }
    </script>

    </asp:Content>