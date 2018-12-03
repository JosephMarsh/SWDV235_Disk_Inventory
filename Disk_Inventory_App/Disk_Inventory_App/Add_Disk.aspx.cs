using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiskInventory
{
    public partial class Add_Disk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //set the default selected status to instock
            ddlStatus.SelectedIndex = 1;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Store Data in SQL insert Object
            var parameters = SqlDataSource1.InsertParameters;
            parameters["disk_name"].DefaultValue = txtDiskName.Text;
            parameters["rel_date"].DefaultValue = txtRelDate.Text;
            parameters["genre_ID"].DefaultValue = ddlGenre.SelectedValue;
            parameters["status_code_ID"].DefaultValue = ddlStatus.SelectedValue;
            parameters["disk_type_ID"].DefaultValue = ddlType.SelectedValue;

            if (IsValid)
            {
                try
                {
                    //insert data to the database
                    SqlDataSource1.Insert();

                    //display success to user
                    lblSuccess.CssClass = "text-success";
                    lblSuccess.Text = "Disk: " + txtDiskName.Text + " added Successfully!";

                    //Clear the Fields 
                    txtDiskName.Text = "";
                    txtRelDate.Text = "";
                    ddlGenre.SelectedIndex = 0;
                    ddlStatus.SelectedIndex = 1; //should default to "in stock"
                    ddlType.SelectedIndex = 0;

                }
                catch (Exception ex)
                {
                    //display error to user
                    lblSuccess.CssClass = "text-danger";
                    lblSuccess.Text = "Failed to add Disk : " + ex.Message;
                }

            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtDiskName.Text = "";
            txtRelDate.Text = "";
            ddlGenre.SelectedIndex = 0;
            ddlStatus.SelectedIndex = 1; //should default to "in stock"
            ddlType.SelectedIndex = 0;
            lblSuccess.Text = "";
        }
    }
}