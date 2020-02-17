using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;


namespace VSM.Class
{
    public class Security
    {
        public static string Hash(String text)
        {
            using (MD5 en = MD5.Create())
            {
                StringBuilder sb = new StringBuilder();
                byte[] b = en.ComputeHash(Encoding.Unicode.GetBytes(text));
                foreach(byte a in b)
                {
                    sb.Append(a.ToString("X2"));
                }
                return sb.ToString();
            }
        }
    }
}