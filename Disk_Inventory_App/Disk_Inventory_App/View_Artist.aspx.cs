using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DiskInventory
{

    public partial class View_Artist : System.Web.UI.Page
    {

        protected string artist;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            lblSuccess.CssClass = "text-success";
            lblSuccess.Text = "Artist: " + ddlArtistName.SelectedItem.ToString() + " Removed.";
            ddlArtistName.SelectedIndex = 0;
            ddlArtistName.DataBind();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                //Edit text box is not accessable untill in edit mode
                //so collect text boxes and store them in accessable virtial text boxes
                TextBox txtGroup1 = (TextBox)DetailsView1.FindControl("txtGroup");
                TextBox txtFrist1 = (TextBox)DetailsView1.FindControl("txtFirstName");
                TextBox txtLast1 = (TextBox)DetailsView1.FindControl("txtFirstName");


                //store text data from virtial text boxes
                string group = txtGroup1.Text;
                string first = txtFrist1.Text;
                string last = txtLast1.Text;

                //clean up text boxes
                txtFrist1.Dispose();
                txtGroup1.Dispose();
                txtLast1.Dispose();


                if ((group == null && first == null && last == null) || (group == "" && first == "" && last == "")
                    || (group == " " && first == " " && last == " "))
                {
                    lblSuccess.CssClass = "text-danger";
                    lblSuccess.Text = "Failed to update: At least one name field needs a vallue.";
                }
                else
                {
                    lblSuccess.CssClass = "text-success";
                    lblSuccess.Text = "Artist: " + ddlArtistName.SelectedValue.ToString() + " Update Successfull!";
                    //refresh the dropdown list incase the name has changed
                    ddlArtistName.DataBind();
                    ddlArtistName.SelectedIndex = 0;
                }

            }
            catch (NullReferenceException ex)
            {
                //Nulls are expected so they are handeled
            }
            catch (Exception ex2)
            {
                lblSuccess.CssClass = "text-danger";
                lblSuccess.Text = "Failed to update: " + ex2.Message;
            }
        }
        protected void DetialsView1_modeChangeing(object sender, System.Web.UI.WebControls.DetailsViewModeEventArgs e)
        {
            //Was goung to use this but abandond it.
            //may use it for somethng later
        }


    }
}
