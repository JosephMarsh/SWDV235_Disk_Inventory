using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiskInventory
{

    public partial class Add_Artist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            bool hasArtistName = true;
            string error = "";

            //store data in SQL insert object
            var parameters = SqlDataSource1.InsertParameters;
            parameters["first_name"].DefaultValue = txtFirstName.Text;
            parameters["last_name"].DefaultValue = txtLastName.Text;
            parameters["group_name"].DefaultValue = txtGroup.Text;
            parameters["artist_type_ID"].DefaultValue = ddlType.SelectedValue;

            //Validation check
            if (txtFirstName.Text == "" && txtLastName.Text == "" && txtGroup.Text == "")
            {
                hasArtistName = false;
                error = "Must fill in at least one name field!";
                lblSuccess.CssClass = "text-danger";
                lblSuccess.Text = error;
            }

            //Add Artist to the database
            if (IsValid && hasArtistName)
            {
                try
                {
                    SqlDataSource1.Insert();
                    txtFirstName.Text = "";
                    txtGroup.Text = "";
                    txtLastName.Text = "";
                    ddlType.SelectedIndex = 0;

                    //Display success
                    lblSuccess.CssClass = "text-success";
                    lblSuccess.Text = "Artist Added!";
                }
                catch (Exception ex)
                {
                    //Display error message
                    lblSuccess.CssClass = "text-danger";
                    lblSuccess.Text = "Failed to add user : " + ex.Message;
                }

            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            lblSuccess.CssClass = "text-success";
            lblSuccess.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtGroup.Text = "";
            ddlType.SelectedIndex = 0;
        }
    }
}