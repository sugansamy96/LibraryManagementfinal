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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(
          ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
        
        protected void btnLogin_Click(object sender, EventArgs e)
        {



           
            SqlCommand cmd = new SqlCommand("select * from tbl_data where username=@username and word=@word", con);
            cmd.Parameters.AddWithValue("@username", txtUserName.Text);
            cmd.Parameters.AddWithValue("@word", txtPassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            


            if (txtUserName.Text == "admin" && txtPassword.Text == "admin")
            // if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                String usertype = row["name"].ToString();
                Session["usertype"] = usertype;

                //Session["usertype"] = "Admin";
                Response.Redirect("~/Welcome.aspx", false);
            }
            else
            {
                Response.Redirect("~/Welcome.aspx", false);
                Session["usertype"] = "user";
            }
            ////else
            ////{
            ////    Label1.Text = "Your username and word is incorrect";
            ////    Label1.ForeColor = System.Drawing.Color.Red;

            //// }
        }
  }
}