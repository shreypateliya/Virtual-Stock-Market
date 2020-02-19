using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VSM.Class;

namespace VSM
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            connection con = new connection();
            Tables t = con.query("select * from UserMaster");
            t.print();
        }
    }
}