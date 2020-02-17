using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.IO;

namespace VSM.Class
{
    public class IO
    {
        static string error;

        public string Error { get => error; set => error = value; }

        public static bool move(String source, String destination)
        {
            try
            {
                if (File.Exists(source))
                {
                    File.Copy(source, destination);
                    File.Delete(source);
                }
                return true;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return false;
            }
        }

        public static bool copy(String source, String destination)
        {
            try
            {
                if (File.Exists(source))
                {
                    File.Copy(source, destination);
                }
                return true;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return false;
            }
        }

        public static bool delete(String source)
        {
            try
            {
                if (File.Exists(source))
                {
                    File.Delete(source);
                }
                return true;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return false;
            }
        }

        public static String[] getFolderNames(String Source)
        {
            try
            {
                String[] folders = Directory.GetDirectories("source");
                for (int i = 0; i < folders.Length; i++)
                {
                    String[] s = folders[i].Split('\\');
                    folders[i] = s[s.Length - 1];
                }
                return folders;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return null;
            }
        }

        public static String[] getFileNames(String Source)
        {
            try
            {
                String[] folders = Directory.GetFiles("source");
                for (int i = 0; i < folders.Length; i++)
                {
                    String[] s = folders[i].Split('\\');
                    folders[i] = s[s.Length - 1];
                }
                return folders;
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return null;
            }
        }

        public static void download(String source)
        {
            String[] filename = source.Split('\\');
            try
            {
                if (File.Exists(source))
                {
                    HttpContext.Current.Response.ContentType = GetMimeType(source);
                    HttpContext.Current.Response.AppendHeader("Content - Disposition", "attachment; filename=" + filename[filename.Length - 1]);
                    HttpContext.Current.Response.TransmitFile(HttpContext.Current.Server.MapPath(source));
                    HttpContext.Current.Response.End();

                }
            }
            catch (Exception ex)
            {
                error = ex.Message;
            }
        }

        public static bool Upload(FileUpload docs, String limit = null)
        {
            if (docs.HasFile)
            {
                try
                {
                    String[] file = docs.FileName.Split('.');
                    if (limit != null && file[file.Length - 1] != limit)
                    {
                        HttpContext.Current.Response.Write("<script>alert(\"Only file with Extension" + limit + " allowed\");</script>");
                        return false;
                    }
                    else
                    {
                        String[] doc = Directory.GetFiles(HttpContext.Current.Server.MapPath("../Files/"), HttpContext.Current.Session["id"] + "*");
                        docs.SaveAs(HttpContext.Current.Server.MapPath("../Files/") + HttpContext.Current.Session["id"] + doc.Length + 1);
                        return true;
                    }
                }
                catch (Exception ex)
                {
                    HttpContext.Current.Response.Write(ex.Message);
                    return false;
                }
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert(\"Please Select a Document\");</script>");
                return false;
            }
        }
        private static string GetMimeType(string fileName)
        {
            string mimeType = "application/unknown";
            string ext = Path.GetExtension(fileName).ToLower();
            Microsoft.Win32.RegistryKey regKey = Microsoft.Win32.Registry.ClassesRoot.OpenSubKey(ext);
            if (regKey != null && regKey.GetValue("Content Type") != null)
            {
                mimeType = regKey.GetValue("Content Type").ToString();
            }
            return mimeType;
        }

    }
}