using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DiskInventory
{
    public partial class E500 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ErrorHandeler.GlobalSqlException != null)
            {
                lblErrorNo.Text = "Error number: " + ErrorHandeler.GlobalSqlException.Number;
            }
            else
            {
                lblErrorNo.Text = "";
            }

            try
            {
                lblErrorDetials.Text += ": " + ErrorHandeler.GlobalException;

            }
            catch (NullReferenceException ex2)
            {
                lblErrorDetials.Text = "an Unknown error occured.";
            }





        }
    }
}