using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Gobal 
/// </summary>

namespace DiskInventory
{

    public partial class Global : System.Web.HttpApplication
    {


        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup

        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs
            //grab last error

            //store it in session

            try
            {
                if (ErrorHandeler.GlobalSqlException != null)
                {
                    ErrorHandeler.GlobalSqlException = (SqlException)Server.GetLastError();
                }
            }
            catch (Exception)
            {
                //if this doesn't work move on.
            }
            
            try
            {
                //grab last error
                Exception ex = Server.GetLastError();
                //store the exception in Global variables
                ErrorHandeler.GlobalException = ex;
                ErrorHandeler.ErrorMessage = ex.InnerException.ToString();
            }
            catch (NullReferenceException ex3)
            {
                ErrorHandeler.ErrorMessage = "Unknown error";
            }
            catch(Exception ex2)//catchall
            {
                Response.Redirect("Error.aspx", false);
            }
            
        }

        void Session_Start(object sender, EventArgs e)
        {
            // Code that runs when a new session is started

        }

        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends. 
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer 
            // or SQLServer, the event is not raised.

        }

    }
}
