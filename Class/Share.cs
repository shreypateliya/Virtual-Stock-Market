using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VSM.Class
{
    public class Share
    {
        public String id, cid, symbol;
        public static Share[] fromDataReader(System.Data.SqlClient.SqlDataReader dr)
        {
            int count = 0;
            System.Data.SqlClient.SqlDataReader dr1 = dr;
            try
            {
                while (dr.Read())
                {
                    count++;
                }
                if (count > 0)
                {
                    Share[] Shares = new Share[count];
                    foreach (Share s in Shares)
                    {
                        dr1.Read();
                        s.id = dr1.GetValue(0).ToString();
                        s.cid = dr1.GetValue(1).ToString();
                        s.symbol = dr1.GetValue(2).ToString();
                    }
                    return Shares;
                }
                return null;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write(ex.Message);
                return null;
            }
        }
        public static double calculatePrice(double x1, double y1, double x2, double y2, double x3, double y3, double x4, double y4)
        {
            double m1 = (y2 - y1) / (x2 - x1);
            double b1 = (m1 * x1) - y1;
            double m2 = (y4 - y3) / (x4 - x3);
            double b2 = (m2 * x4 - y4);
            double p = (b2 - b1) / (2 * (m1 - m2));
            return p;
        }
    }
}