using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class View_Artist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
                lblSuccess.Text = "Artist Update Successfull!";
            }

        }
        catch (NullReferenceException ex)
        {

        }
    }
    protected void DetialsView1_modeChangeing(object sender, System.Web.UI.WebControls.DetailsViewModeEventArgs e)
    {
        //Was goung to use this but abandond it.
    }


}
