using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DiskInventory
{

    public partial class Add_Cust : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail2.Text = "";
            txtPhone.Text = "";
            lblSuccess.Text = "";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //store data in SQL insert object
            var parameters = SqlDataSource1.InsertParameters;
            parameters["emaill_address"].DefaultValue = txtEmail.Text;
            parameters["first_name"].DefaultValue = txtFirstName.Text;
            parameters["last_name"].DefaultValue = txtLastName.Text;
            parameters["phone_number"].DefaultValue = txtPhone.Text;

            if (IsValid)
            {
                try
                {
                    //Add the data to the datbase
                    SqlDataSource1.Insert();

                    //display success to user
                    lblSuccess.CssClass = "text-success";
                    lblSuccess.Text = "User :" + txtEmail.Text + " Successfully added!";

                    //clear the fields so more can be added
                    txtEmail.Text = "";
                    txtEmail2.Text = "";
                    txtFirstName.Text = "";
                    txtLastName.Text = "";
                    txtPhone.Text = "";


                }
                catch (Exception ex)
                {
                    //display error to user
                    lblSuccess.CssClass = "text-danger";
                    lblSuccess.Text = "Failed to add user : " + ex.Message;
                }
            }
        }
    }
}