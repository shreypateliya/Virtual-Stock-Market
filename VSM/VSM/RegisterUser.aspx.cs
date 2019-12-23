using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VSM.DB;

namespace VSM
{
    public partial class RegisterUSer : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            String fname = txtfname.Text;
            String mname = txtmname.Text;
            String lname = txtlname.Text;
            String Email = txtmail.Text;
            String password = txtpass.Text;
            Response.Write(password);
            String birth = txtdob.Text;
            String address = txtadd.Text;
            String city = ddlCity.SelectedValue;
            String state = ddlState.SelectedValue;
            String country = ddlState.SelectedValue;
            Double pin = Convert.ToDouble(txtpincode.Text);
            String gender = "";
            if (male.Checked)
                gender = "Male";
            if (female.Checked)
                gender = "female";
            else
                gender = "other";
            double phno = Convert.ToDouble(txtphno.Text);
            connection con = new connection();
            bool done = con.addUser(fname, mname, lname, Email, password, birth, address, city, state, country, gender, pin, phno);
            if (done)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write(con.err);
            }
        }
    }
}