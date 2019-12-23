using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace VSM.DB
{
    public class connection
    {
        public String err = "";
        public String name, type;
        private SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"G:\\Projects\\6th sem\\VSM\\VSM\\App_Data\\Master.mdf\";Integrated Security=True");

        public void open()
        {
            try
            {
                con.Open();
            }
            catch(Exception ex)
            {
                Console.Write(ex.Message);
            }
        }
        public bool userExist(String mail, String password)
        {
            String query = "select * from UserMaster where Email like '" + mail + "' and Password like '" + password + "'";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    name = dr.GetValue(1).ToString() + dr.GetValue(2).ToString() + dr.GetValue(3).ToString();
                    type = dr.GetValue(5).ToString();
                    dr.Close();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch(Exception ex)
            {
                err = ex.Message;
                return false;
            }
            finally
            {
                con.Close();
                
            }
        }

        public bool addUser(String fname, String mname, String lname, String email, String password, String birth, String address, String city, String state, String country, String gender, Double pin, Double phno)
        {
            String query = "";
            try
            {
                con.Open();
                query = "select count(*) from UserMaster where Email like '" + email + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                if(Convert.ToInt32(cmd.ExecuteScalar().ToString()) > 0)
                {
                    err = "Email Already registered";
                    return false;
                }
                else
                {
                    query = "Select count(*) from UserMaster";
                    cmd = new SqlCommand(query, con);
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    query = "insert into UserMaster (UserId, FirstName, MiddleName, LastName, type, Email, Password, BirthDate, Address, City, State, Country, Gender, Pincode, PhoneNumber) values(" + count + ", '" + fname + "', '" + mname + "', '" + lname + "', 'User', '" + email + "', '" + password + "', '" + birth + "', '" + address + "', '" + city + "', '" + state + "', '" + country + "', '" + gender + "', " + pin + ", " + phno + ")";
                    cmd = new SqlCommand(query, con);
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        cmd.Dispose();
                        return true;
                    }
                    else
                    {
                        cmd.Dispose();
                        return false;
                    }
                } 
            }
            catch(Exception ex)
            {
                err = ex.Message;
                return false;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
