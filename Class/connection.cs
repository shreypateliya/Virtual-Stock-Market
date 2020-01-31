using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace VSM.Class
{
    public class connection
    {
        static readonly int Company = 0;
        static readonly int user = 1;
        private String error = "";
        public String id, type;
        private SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"..\\App_Data\\Master.mdf\";Integrated Security=True");

        public string Error { get => error; set => error = value; }

        public bool userExist(String mail, String password)
        {

            String query = "select * from UserMaster where Email like '" + mail + "' and Password like '" + Security.Hash(password) + "'";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    id = dr.GetValue(0).ToString();
                    type = dr.GetValue(5).ToString();
                    dr.Close();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Error = ex.Message;
                return false;
            }
            finally
            {
                con.Close();

            }
        }

        public bool CompanyExist(String mail, String pass)
        {
            try
            {
                con.Open();
                String qs = "select CompanyId from Company where Email like '" + mail + "' and Password like '" + Security.Hash(pass) + "'";
                SqlCommand cmd = new SqlCommand(qs, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    id = dr.GetValue(0).ToString(); ;
                    type = "company";
                    dr.Close();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Error = ex.Message;
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public bool AddUser(String fname, String mname, String lname, String mail, String pass, String dob, String phno, String gender)
        {
            String qs = "select count(*) from USerMaster";
            try
            {
                con.Open();
                int i = Convert.ToInt32(new SqlCommand(qs, con).ExecuteScalar());
                qs = "insert into UserMaster(UserId, FirstName, MiddleName, LastName, Type, Email, Password, BirthDate, PhoneNumber, Gender) Values(" + i + ", '" + fname + "', '" + mname + "','" + lname + "', 'user', '" + mail + "' ,'" + pass + "', '" + dob + "', " + Convert.ToInt32(phno) + ", '" + gender + "')";
                new SqlCommand(qs, con).ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                Error = ex.Message;
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public bool addCompany(String name, String contact, String Person, String mail, String Password, String gst, String cin, String regdate, String add, String city, String state, String Country, String Pincode, String sector)
        {
            try
            {
                con.Open();
                String qs = "select count(*) from Company";
                SqlCommand cmd = new SqlCommand(qs, con);
                String count = cmd.ExecuteScalar().ToString();
                qs = "insert into Company(CompanyId, Name, Contact, ContactPerson, Email, Password, GSTno, CIN, RegistrationDate, Address, CityId, StateId, CountryId, Pincode, SectorId) values(" + count + ", '" + name + "', '" + contact + "', '" + Person + "', '" + mail + "', '" + Security.Hash(Password) + "', " + gst + ", " + cin + ", '" + regdate + "', '" + add + "', " + city + ", " + state + ", " + Country + ", " + Pincode + ", " + sector + ")";
                cmd = new SqlCommand(qs, con);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                Error = ex.Message;
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public bool deleteUser(String id)
        {
            try
            {
                con.Open();
                String qs = "delete from UserMaster where UserId='" + id + "'";
                SqlCommand cmd = new SqlCommand(qs, con);
                cmd.ExecuteNonQuery();
                return true;

            }
            catch (Exception ex)
            {
                Error = ex.Message;
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public bool deleteCompany(String id)
        {
            try
            {
                con.Open();
                String qs = "delete from Company where UserId='" + id + "'";
                SqlCommand cmd = new SqlCommand(qs, con);
                cmd.ExecuteNonQuery();
                return true;

            }
            catch (Exception ex)
            {
                Error = ex.Message;
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public bool blockUser(String id, int type)
        {
            String table = "", field = "";
            String check = "";
            try
            {
                con.Open();
                if (type == Company)
                {
                    table = "Company";
                    field = "CompanyId";
                }
                else if (type == user)
                {
                    table = "UserMaster";
                    check = " Type not like 'admin'";
                    field = "UserId";
                }
                else
                {
                    throw new Exception("Invalid Input type");
                }
                String qs = "update " + table + "set delete=1 where " + field + "='" + id + "'" + check;
                SqlCommand cmd = new SqlCommand(qs, con);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                Error = ex.Message;
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public bool verifyComapny(String id)
        {
            try
            {
                con.Open();
                String qs = "update Company set Verified=1 where CompanyId=" + id;
                SqlCommand cmd = new SqlCommand(qs, con);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public Share[] search(String SearchString)
        {
            try
            {
                con.Open();
                String qs = "select * from Share where Symbol like '%" + SearchString + "%'";
                SqlDataReader dr = new SqlCommand(qs, con).ExecuteReader();
                Share [] s = Share.fromDataReader(dr);
                return s;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return null;
            }
            finally
            {
                con.Close();
            }
        }

    }
}
