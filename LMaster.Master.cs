using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class LMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string usertype = Session["usertype"].ToString();
            if(usertype != "Admin")
            {
                adduser.Visible = false;
                addbook.Visible = false; 
            }


        }
    }
}