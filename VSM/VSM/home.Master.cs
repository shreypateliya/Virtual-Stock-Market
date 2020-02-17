using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VSM.Class;

namespace VSM
{
    public partial class home : System.Web.UI.MasterPage
    {
        connection con = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regComapny_Click(object sender, EventArgs e)
        {
            string name = txtCompanyName.Text;
            string contact = txtContact.Text;
            string person = txtContactPerson.Text;
            string mail = txtEmail.Text;
            string password = CPassword.Text;
            string gst = GstNo.Text;
            string cin = CIN.Text;
            string regDate = RegDate.Text;
            string address = Address.Text;
            string city = dropCity.SelectedIndex.ToString();
            string state = dropState.SelectedIndex.ToString();
            string country = dropCountry.SelectedIndex.ToString();
            string pincode = Pincode.Text;
            string sector = dropSector.SelectedIndex.ToString();
            bool flag = con.addCompany(name, contact, person, mail, password, gst, cin, regDate, address, city, state, country, pincode, sector);
            if (flag)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void regUser_Click(object sender, EventArgs e)
        {
            string fname = FirstName.Text;
            string mname = MiddleName.Text;
            string lname = LastName.Text;
            string mail = Email.Text;
            string pass = Password.Text;
            string dob = BirthDate.Text;
            string phno = phone.Text;
            string gender = "";
            if (Male.Checked)
            {
                gender = "Male";
            }
            else if (Female.Checked)
            {
                gender = "Female";
            }
            else
            {
                gender = "Others";
            }
            string address = Address.Text;
            string city = dropci.SelectedIndex.ToString();
            string state = dropst.SelectedIndex.ToString();
            string country = dropcon.SelectedIndex.ToString();
            string pin = txtpin.Text;
            bool flag = con.AddUser(fname, mname, lname, mail, pass, dob, phno, gender, address, city, state, country, pin);
            if (flag)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            bool flag = false;
            if (user.Checked)
            {
                flag = con.userExist(LMail.Text, Lpass.Text);
                if (flag)
                {
                    Response.Redirect("ShareDetails.aspx");
                }
            }
            else
            {
                flag = con.CompanyExist(LMail.Text, Lpass.Text);
                if (flag)
                {
                    Response.Redirect("ComapnyHome.aspx");
                }
            }
            if (!flag)
            {
                Response.Redirect("Error Page");
            }
        }
    }
}