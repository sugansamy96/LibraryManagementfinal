using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class ViewBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                gvbind();
        }

        SqlConnection con = new SqlConnection(
           ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());

        protected void Search(object sender, EventArgs e)
        {
            this.SearchBook();
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            gridBooks.PageIndex = e.NewPageIndex;
            this.SearchBook();
        }
        protected void gvbind()
        {
            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT BookName,AuthorName,Publisher FROM tbl_book", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();

               // DataSet ds = new DataSet();
                //DataTable tbl_book = new DataTable();


                //tbl_book.Columns.Add("id", typeof(int));
                //tbl_book.Columns.Add("BookName", typeof(string));
                //tbl_book.Columns.Add("AuthorName", typeof(string));
                //tbl_book.Columns.Add("Publisher", typeof(string));

                //tbl_book.Rows.Add(1, "AAAA", "Author1", "Publisher1");
                //tbl_book.Rows.Add(2, "BBBB", "Author2", "Publisher2");
                //tbl_book.Rows.Add(3, "CCCC", "Author3", "Publisher3");
                //tbl_book.Rows.Add(4, "DDDD", "Author4", "Publisher4");



                //ds.Tables.Add(tbl_book);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    gridBooks.DataSource = ds;
                    gridBooks.DataBind();
                }
                else
                {
                    ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                    gridBooks.DataSource = ds;
                    gridBooks.DataBind();
                    int columncount = gridBooks.Rows[0].Cells.Count;
                    gridBooks.Rows[0].Cells.Clear();
                    gridBooks.Rows[0].Cells.Add(new TableCell());
                    gridBooks.Rows[0].Cells[0].ColumnSpan = columncount;
                    gridBooks.Rows[0].Cells[0].Text = "No Records Found";
                }
            }
            catch(Exception)
            {

            }
        }
        private void SearchBook()
        {
            
                using (SqlCommand cmd = new SqlCommand())
                {
                    
                        string sql = "SELECT BookName,BookCategory,AuthorName,Publisher FROM tbl_book WHERE 1=1";
                    if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
                    {
                        sql += " or BookName LIKE @BookName + '%'";
                        cmd.Parameters.AddWithValue("@BookName", txtSearch.Text.Trim());
                    }
                    if (!string.IsNullOrEmpty(ddlBookCategory.SelectedItem.Text) && ddlBookCategory.SelectedItem.Text != "Select Book Category")
                    {
                        sql += " or BookCategory LIKE @BookCategory + '%'";
                        cmd.Parameters.AddWithValue("@BookCategory", ddlBookCategory.SelectedItem.Text.Trim());
                    }
                    
                    if (!string.IsNullOrEmpty(txtAuthorName.Text.Trim()) )
                    {
                        sql += " or AuthorName LIKE @AuthorName + '%'";
                        cmd.Parameters.AddWithValue("@AuthorName", txtAuthorName.Text.Trim());
                    }
                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gridBooks.DataSource = dt;
                        gridBooks.DataBind();
                    }
                
            }
        }
        
    }
}