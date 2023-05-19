using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Airbnb.DAL
{
    public class myDAL
    {
        static string connString = System.Configuration.ConfigurationManager.ConnectionStrings["airbnb"].ConnectionString;
        public int Signup_guest(string fullname, string username, string pw, string emailID, string phoneNo, string billAdd, ref DataTable dT)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("signupguest", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@fullname", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@username", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@phone", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@address", SqlDbType.VarChar, 20);


                cmd.Parameters["@password"].Value = pw;
                cmd.Parameters["@fullname"].Value = fullname;
                cmd.Parameters["@username"].Value = username;
                cmd.Parameters["@email"].Value = emailID;
                cmd.Parameters["@phone"].Value = phoneNo;
                cmd.Parameters["@address"].Value = billAdd;
                cmd.ExecuteNonQuery();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -1;

            }
            finally
            {
                con.Close();
            }
            return 0;
        }
        public int Signup_host(string fullname, string username, string pw, string emailID, string phoneNo, string billAdd, ref DataTable dT)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("signuphost", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@fullname", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@username", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@phone", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@address", SqlDbType.VarChar, 20);


                cmd.Parameters["@password"].Value = pw;
                cmd.Parameters["@fullname"].Value = fullname;
                cmd.Parameters["@username"].Value = username;
                cmd.Parameters["@email"].Value = emailID;
                cmd.Parameters["@phone"].Value = phoneNo;
                cmd.Parameters["@address"].Value = billAdd;
                cmd.ExecuteNonQuery();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -1;

            }
            finally
            {
                con.Close();
            }
            return 0;
        }

        public int booking(string promo,string emailID, string checkin, string checkout, string numb_rooms, string list, int var,ref DataTable dt)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("guestid", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 20);


                // set parameter values

                cmd.Parameters["@email"].Value = emailID;
                //SqlDataReader dr = cmd.ExecuteReader();
                //dr.Read();
                //int d = dr.GetInt32(0);
                //var c=cmd.ExecuteNonQuery();
            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -1;
            }
            finally
            {
                con.Close();

            }
           
            int Found = 0;
            DataSet ds2 = new DataSet();
            SqlCommand cmd1;
            con.Open();
            
            try
            {
                cmd1 = new SqlCommand("get_promo", con); //name of your procedure
                cmd1.CommandType = CommandType.StoredProcedure;

                cmd1.Parameters.AddWithValue("@promo", promo);
                cmd1.Parameters.Add("@out", SqlDbType.Int);
                cmd1.Parameters["@out"].Direction = ParameterDirection.Output;

                // set parameter values

                cmd1.Parameters["@promo"].Value = promo;
                cmd1.ExecuteNonQuery();
                Found = Convert.ToInt16(cmd1.Parameters["@out"].Value);

            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -1;
            }
            finally
            {
                    con.Close();

            }
            DataSet ds1 = new DataSet();
            SqlCommand cmd2;
            con.Open();
            
            try
            {
                cmd2 = new SqlCommand("bookings", con); //name of your procedure
                cmd2.CommandType = CommandType.StoredProcedure;

                
                cmd2.Parameters.Add("@_guest", SqlDbType.Int);
                cmd2.Parameters.Add("@bookcheckindate", SqlDbType.VarChar, 20);
                cmd2.Parameters.Add("@bookcheckoutdate", SqlDbType.VarChar, 20);
                cmd2.Parameters.Add("@numbrooms", SqlDbType.Int);
                cmd2.Parameters.Add("@roomtype", SqlDbType.VarChar,20);
                cmd2.Parameters.Add("@money", SqlDbType.Float);

                // set parameter values
                
                cmd2.Parameters["@_guest"].Value = 1;
                cmd2.Parameters["@bookcheckindate"].Value = checkin;
                cmd2.Parameters["@bookcheckoutdate"].Value = checkout;
                cmd2.Parameters["@numbrooms"].Value = numb_rooms;
                cmd2.Parameters["@roomtype"].Value = list;
                cmd2.Parameters["@money"].Value = var;
                cmd2.ExecuteNonQuery();

                // read output value
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -1;
            }
            finally
            {
             //   con.Close();
                con.Close();

            }
            return Found;
            // read output value 
        
        }
        public static int login(String email, String pass )
        {
            
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("loginguest", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.Add("@username", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 50);

                // set parameter values

                cmd.Parameters["@password"].Value = pass;
                cmd.Parameters["@username"].Value = email;




                cmd.ExecuteNonQuery();

                // read output value 



                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return -1;
            }
            finally
            {
                con.Close();

            }
            return 0;
        }
    }
}