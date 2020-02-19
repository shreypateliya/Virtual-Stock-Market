using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using VSM.Class;

namespace VSM.Admin
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            connection con = new connection();
            try
            {
                String qs = "Select * from UserMaster where UserId='" + id + "'";
                con.open();
                SqlCommand cmd = new SqlCommand(qs, con.Con);
                SqlDataReader dr = cmd.ExecuteReader();

            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx?e=" + ex.Message);
            }
            finally
            {
                con.close();
            }
        }
    }
}