using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class Adduser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            try
            {


                var query = "insert into tbl_book(UserName,Password,Emailid,UserType) values(@UserName,@Password,@Emailid,@UserType)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@Emailid", txtEmailid.Text);
                    cmd.Parameters.AddWithValue("@UserType", ddlUserType.SelectedValue);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }


                // if (dt.Rows.Count > 0)
                // {
                Console.WriteLine("user inserted Sucesssfuly");
                
            }
            catch (Exception)
            { }
        }
    }
}