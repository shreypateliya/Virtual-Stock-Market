using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using VSM.Class;

namespace VSM
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String ShareId = Request.QueryString["ID"];
            connection con = new connection();
            
            try
            {
                con.open();
                String qs = "select * from share where ShareId = '" + ShareId + "'";
                SqlCommand cmd = new SqlCommand(qs, con.Con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                String Symbol = dr.GetValue(2).ToString();
                String CompanyId = dr.GetValue(1).ToString();
                qs = "select * from Company where CompanyId='" + CompanyId + "'";
                dr.Close();
                cmd.CommandText = qs;
                SqlDataReader dr1 = cmd.ExecuteReader();
                dr1.Read();
                String CompanyName = dr1.GetValue(1).ToString();
                String contact = dr1.GetValue(2).ToString();
                String person = dr1.GetValue(3).ToString();
                String Email = dr1.GetValue(4).ToString();
                String Image = dr1.GetValue(6).ToString();
                String gst = dr1.GetValue(7).ToString();
                String cin = dr1.GetValue(8).ToString();
                String reg = dr1.GetValue(9).ToString();
                String add = dr1.GetValue(10).ToString();
                String sectorid = dr1.GetValue(15).ToString();
                String marketCap = dr1.GetValue(16).ToString();

                qs = "select * from Sector where SectorId = '" + sectorid + "'";
                cmd.CommandText = qs;
                dr1.Close();
                SqlDataReader dr2 = cmd.ExecuteReader();
                dr2.Read();
                String sector = dr2.GetValue(1).ToString();
                dr2.Close();
                
                lblName.Text = Symbol;
                lblId.Text = ShareId;
                lblSector.Text = sector;
                lblSymbol.Text = Symbol;
                lblComapny.Text = CompanyName;
                lblGst.Text = gst;
                lblRegDt.Text = reg;
                lblMarkCap.Text = marketCap;
                lblCIN.Text = cin;
                lblSec2.Text = sector;
                lblContact.Text = contact;
                lblPerson.Text = person;
                lblMail.Text = Email;
                lblAdd.Text = add;

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.close();
            }
        }
    }
}