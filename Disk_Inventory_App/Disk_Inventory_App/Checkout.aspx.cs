using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiskInventory
{

    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            ///<summary>
            ///This event captures data from the two list boxes and 
            ///uses this data to checkout a disk to a user
            ///</summary>

            //store SQL insert for rental Log
            var parametersLog = SqlDataSourceUpdateRentalLog.InsertParameters;
            parametersLog["disk_ID"].DefaultValue = lbxDisk.SelectedValue;
            parametersLog["borrower_ID"].DefaultValue = lbxCustomer.SelectedValue;
            parametersLog["check_out_date"].DefaultValue = DateTime.Now.ToString();

            //Store SQL insert for Disk status
            var parametersDisk = SqlDataSource2.UpdateParameters;
            parametersDisk["disk_ID"].DefaultValue = lbxDisk.SelectedValue;
            parametersDisk["status_code_ID"].DefaultValue = "3";//sets status to checkout

            if (IsValid)
            {

                try
                {
                    SqlDataSourceUpdateRentalLog.Insert();
                    SqlDataSource2.Update();

                    //display success
                    lblSuccess.Text = lbxDisk.SelectedItem +
                        "successfully checkout out to " +
                        lbxCustomer.SelectedItem + "!";
                    lblSuccess.CssClass = "text-success";
                    //refresh the list boxes
                    lbxCustomer.DataBind();
                    lbxDisk.DataBind();
                }
                catch (Exception ex)
                {
                    //Display error message
                    lblSuccess.CssClass = "text-danger";
                    lblSuccess.Text = "Failed to checkout disk : " + ex.Message;
                }


            }
            else
            {
                lblSuccess.Text = "failed to checkout disk";
                lblSuccess.CssClass = "text-danger";
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ///<summary>
            ///This event clears the form and resets error lables and formating1.
            ///</summary>
            lbxCustomer.ClearSelection();
            lbxDisk.ClearSelection();

            lbxCustomer.DataBind();
            lbxDisk.DataBind();

            lblSuccess.Text = "";
            lblSuccess.CssClass = "text-success";
        }
    }
}