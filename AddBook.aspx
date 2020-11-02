<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/LMaster.Master" CodeBehind="AddBook.aspx.cs" Inherits="LibraryManagement.AddBook" %>


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
                                   <a class="collapseWill">Add Book</a>  
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
                                                   <asp:TextBox ID="txtBookName" CssClass="form-control" placeholder="Enter Book Name" runat="server"></asp:TextBox>  
                                               </div>  
                                               <asp:Label ID="lblErrBookName" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>  
                                           </div>  

                                           <label class="col-md-12 control-label" for="prependedcheckbox">  
                                               Book Category 
                                           </label>  
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
                                               <asp:Label ID="Label1" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>  
                                           </div>  

                                           <label class="col-md-12 control-label" for="prependedcheckbox">  
                                              Book Cover 
                                           </label>  
                                           <div class="col-md-12">  
                                               <div class="input-group">  
                                                   <span class="input-group-addon">  
                                                       <i class="fa fa-user"></i>  
                                                   </span>  
                                                    <asp:FileUpload ID="fileupladBookImage" CssClass="form-control" runat="server" accept=".png,.jpg,.jpeg,.gif" />
                                                    
                                               </div>  
                                               </div>  


                                            <label class="col-md-12 control-label" for="prependedcheckbox">  
                                               Author 
                                           </label>  
                                           <div class="col-md-12">  
                                               <div class="input-group">  
                                                   <span class="input-group-addon">  
                                                       <i class="fa fa-user"></i>  
                                                   </span>  
                                                   <asp:TextBox ID="txtAuthorName" CssClass="form-control" placeholder="Enter Author Name" runat="server"></asp:TextBox>  
                                               </div>  
                                               <asp:Label ID="lblErrAuthorName" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>  
                                           </div>  
      
                                            <label class="col-md-12 control-label" for="prependedcheckbox">  
                                               Publisher 
                                           </label>  
                                           <div class="col-md-12">  
                                               <div class="input-group">  
                                                   <span class="input-group-addon">  
                                                       <i class="fa fa-user"></i>  
                                                   </span>  
                                                   <asp:TextBox ID="txtPublisher" CssClass="form-control" placeholder="Enter Publisher " runat="server"></asp:TextBox>  
                                               </div>  
                                               <asp:Label ID="lblPublisher" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>  
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
        <div>  
                <asp:GridView ID="grdBook" runat="server" AutoGenerateColumns="false" DataKeyNames="id" OnPageIndexChanging="grdBook_PageIndexChanging" OnRowCancelingEdit="grdBook_RowCancelingEdit" OnRowDeleting="grdBook_RowDeleting" OnRowEditing="grdBook_RowEditing" OnRowUpdating="grdBook_RowUpdating" 
                    
                    ShowFooter="true" CssClass="EU_DataTable" CellPadding="1" Width="618px" ForeColor="#333333" GridLines="None" >
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
                     
                        
                        <asp:CommandField ShowEditButton="true" />  
                        <asp:CommandField ShowDeleteButton="true" /> </Columns>  
                </asp:GridView>  
            </div> 
       <%-- <asp:GridView ID="gridBooks" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="false"
                    ShowFooter="true" >  
                    <Columns>  
                       

                             <asp:TemplateField ItemStyle-Width="600px" HeaderText="BookName">  
                            <ItemTemplate>  
                                <asp:Label ID="grdlblBookName" runat="server" Text='<%#Eval("BookName")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="grdtxtBookName" runat="server" Text='<%#Eval("BookName")%>'></asp:TextBox>  
                            </EditItemTemplate>                               
                        </asp:TemplateField> 

                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="BookCategory">  
                            <ItemTemplate>  
                                <asp:Label ID="grdlblBookCategory" runat="server" Text='<%#Eval("BookCategory")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:DropDownList ID="grdtxtBookCategory"  CssClass="form-control" placeholder="Enter Book Category" runat="server"> 
                                                       <asp:ListItem Value="">Select Book Category</asp:ListItem> 
                                                       <asp:ListItem>Story</asp:ListItem> 
                                                       <asp:ListItem>Fantasy</asp:ListItem> 
                                                       <asp:ListItem>Science</asp:ListItem> 
                                                       <asp:ListItem>Horror</asp:ListItem> 
                                                       <asp:ListItem>Novel</asp:ListItem> 
                                                       </asp:DropDownList>
                            </EditItemTemplate>  
                             
                        </asp:TemplateField> 

                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="AuthorName">  
                            <ItemTemplate>  
                                <asp:Label ID="grdlblAuthorName" runat="server" Text='<%#Eval("AuthorName")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="grdtxtAuthorName" runat="server" Text='<%#Eval("AuthorName")%>'></asp:TextBox>  
                            </EditItemTemplate>                               
                        </asp:TemplateField> 

                         <asp:TemplateField ItemStyle-Width="600px" HeaderText="Publisher">  
                            <ItemTemplate>  
                                <asp:Label ID="grdlblPublisher" runat="server" Text='<%#Eval("Publisher")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="grdtxtPublisher" runat="server" Text='<%#Eval("Publisher")%>'></asp:TextBox>  
                            </EditItemTemplate>                               
                        </asp:TemplateField> 

                        </Columns>
                    </asp:GridView>--%>
   </form>   
   
    <script>
        function Validation() {
            
            var BookName, BookCategory,Publisher, AuthorName,BookImage ;
           
            
            BookName = document.getElementById("txtBookName").value;
            BookCategory = document.getElementById("ddlBookCategory").value;
            BookImage = document.getElementById("fileupladBookImage").value;
            AuthorName = document.getElementById("txtAuthorName").value;
            Publisher = document.getElementById("txtPublisher").value;
               
            //if (BookName == '' && BookCategory == '' && Publisher == '' && AuthorName == '' && BookImage == '')
            //{
            //    alert("Enter All Fields");
            //    return false;
            //}
            if (BookName == '') {
                alert("Please Enter BookName");
                return false;
            }
            if (BookCategory == '') {
                alert("Please select BookCategory");
                return false;
            }
            if (BookImage == '') {
                alert("Please Select BookCover");
                return false;
            }
            if (AuthorName == '') {
                alert("Please Enter AuthorName");
                return false;
            }
            if (Publisher == '') {
                alert("Please Enter Publisher");
                return false;
            }
            
            


        }
    </script>
 </asp:Content>
