<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/LMaster.Master" CodeBehind="ViewBook.aspx.cs" Inherits="LibraryManagement.ViewBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
  
    <form id="form1" runat="server">


        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 col-sm-8 col-xl-12 " style="float: initial;padding-top: 12%;margin-left: 153px;margin-top: -93px;">
                    <div class="row userInfo">

                        <div class="panel panel-default ">
                            <div class="panel-heading">
                                <h3 class="panel-title" style="text-align: center; font-weight: bold">
                                    <a class="collapseWill">Search book details</a>
                                </h3>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <fieldset>
                                        <div class="form-group">
                                            <div class="col-md-"></div>
                                            <label class="col-md-12 control-label" for="prependedcheckbox">
                                                Book Name 
                                            </label>
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user"></i>
                                                    </span>
                                                    <asp:TextBox ID="txtSearch" CssClass="form-control" placeholder="Enter Book Name" runat="server"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="lblErrUserName" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>
                                            </div>





                                            <label class="col-md-12 control-label" for="prependedcheckbox">
                                                Author Name
                                            </label>
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user"></i>
                                                    </span>
                                                    <asp:TextBox ID="txtAuthorName" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                                                </div>
                                                <asp:Label ID="lblErrAuthorName" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user"></i>
                                                    </span>

                                                    <asp:DropDownList ID="ddlBookCategory"  CssClass="form-control" placeholder="Enter Book Category" runat="server"> 
                                                       <asp:ListItem Value="">Select Book Category</asp:ListItem> 
                                                       <asp:ListItem>Story</asp:ListItem> 
                                                       <asp:ListItem>Fantasy</asp:ListItem> 
                                                       <asp:ListItem>Science</asp:ListItem> 
                                                       <asp:ListItem>Horror</asp:ListItem> 
                                                       <asp:ListItem>Novel</asp:ListItem> 
                                                       </asp:DropDownList>

                                                </div>
                                                <asp:Label ID="Label2" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>
                                            </div>

                                            
                                                    

                                                 <asp:Label ID="Label1" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>
                                            </div>

                                            <div class="col-md-12">

                                                <div class="col-lg-6">
                                                    <div class="input-group" style="width: 100%">
                                                        <asp:Button ID="btnSearch" CssClass="btn btn-success" Text="Search"
                                                             runat="server" Style="width: 100%" OnClick="Search" />
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
            

    
        <div style="margin-left:100px;margin-top: 55px;">
             <asp:GridView ID="gridBooks" runat="server"   ShowFooter="true" CssClass="EU_DataTable" CellPadding="1" Width="618px" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"  />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
                     
                    <Columns>  
                       

                           <asp:BoundField DataField="BookName" HeaderText="BookName" />  
                        <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" />  
                        <asp:BoundField DataField="Publisher" HeaderText="Publisher" />    

                        </Columns>
                    </asp:GridView>
        </div>
            </div>
    </form>
    </asp:Content>