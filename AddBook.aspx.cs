using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class AddBook : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                gvbind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                
                
                var query = "insert into tbl_book(BookName,BookCategory,BookImage,AuthorName,Publisher) values(@BookName,@BookCategory,@BookImage,@AuthorName,@Publisher)";
               
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@BookName", txtBookName.Text);
                        cmd.Parameters.AddWithValue("@BookCategory", ddlBookCategory.SelectedValue);
                        cmd.Parameters.AddWithValue("@BookImage", fileupladBookImage.FileName);
                    cmd.Parameters.AddWithValue("@AuthorName", txtAuthorName.Text);
                    cmd.Parameters.AddWithValue("@Publisher", txtPublisher.Text);

                    con.Open();
                        cmd.ExecuteNonQuery();
                    }
                

                // if (dt.Rows.Count > 0)
                // {
                Console.WriteLine("Book inserted Sucesssfuly");
                //BindBook();
            //}
            }
            catch(Exception)
                    { }
        }
        
        protected void gvbind()
        {
            //con.open();
            //sqlcommand cmd = new sqlcommand("select bookname,authorname,publisher from tbl_book", con);
            //sqldataadapter da = new sqldataadapter(cmd);
            //dataset ds = new dataset();
            //da.fill(ds);
            //con.close();

            DataSet ds = new DataSet();
            DataTable tbl_book = new DataTable();


            tbl_book.Columns.Add("id", typeof(int));
            tbl_book.Columns.Add("BookName",typeof(string));
            tbl_book.Columns.Add("AuthorName" , typeof(string));
            tbl_book.Columns.Add("Publisher", typeof(string));

            tbl_book.Rows.Add(1,"AAAA","Author1","Publisher1");
            tbl_book.Rows.Add(2,"BBBB", "Author2", "Publisher2");
            tbl_book.Rows.Add(3,"CCCC", "Author3", "Publisher3");
            tbl_book.Rows.Add(4,"DDDD", "Author4", "Publisher4");
          
          

            ds.Tables.Add(tbl_book);

            if (ds.Tables[0].Rows.Count > 0)
            {
                grdBook.DataSource = ds;
                grdBook.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                grdBook.DataSource = ds;
                grdBook.DataBind();
                int columncount = grdBook.Rows[0].Cells.Count;
                grdBook.Rows[0].Cells.Clear();
                grdBook.Rows[0].Cells.Add(new TableCell());
                grdBook.Rows[0].Cells[0].ColumnSpan = columncount;
                grdBook.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
        protected void grdBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)grdBook.Rows[e.RowIndex];
            //Label lbldeleteid = (Label)row.FindControl("lblID");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete FROM tbl_book where id='" + Convert.ToInt32(grdBook.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();
        }
        protected void grdBook_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdBook.EditIndex = e.NewEditIndex;
            gvbind();
        }
        protected void grdBook_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int userid = Convert.ToInt32(grdBook.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)grdBook.Rows[e.RowIndex];
           // Label lblID = (Label)row.FindControl("lblID");
            //TextBox txtname=(TextBox)gr.cell[].control[];  
            TextBox textBookName = (TextBox)row.Cells[0].Controls[0];
            TextBox textAuthorName = (TextBox)row.Cells[1].Controls[0];
            TextBox textPublisher = (TextBox)row.Cells[2].Controls[0];
            //TextBox textadd = (TextBox)row.FindControl("txtadd");  
            //TextBox textc = (TextBox)row.FindControl("txtc");  
            grdBook.EditIndex = -1;
            con.Open();
            //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);  
           SqlCommand cmd = new SqlCommand("update detail set BookName='" + textBookName.Text + "',AuthorName='" + textAuthorName.Text + "',Publisher='" + textPublisher.Text + "'where id='" + userid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();
            //grdBook.DataBind();  
        }
        protected void grdBook_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdBook.PageIndex = e.NewPageIndex;
            gvbind();
        }
        protected void grdBook_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdBook.EditIndex = -1;
            gvbind();
        }
    }
}
