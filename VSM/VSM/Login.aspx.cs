using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using VSM.DB;

namespace VSM
{
    public partial class Login : System.Web.UI.Page
    {
        connection con = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(con.userExist(txtmail.Text, txtpass.Text))
            {
                Session["name"] = con.name;
                Session["type"] = con.type;
                LoginError.Text = "user found";
            }
            else
            {
                LoginError.Text = "User Not found";
            }
            Response.Write(con.err);
        }
    }
}