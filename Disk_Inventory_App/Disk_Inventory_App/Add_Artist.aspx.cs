using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_Artist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        bool hasArtistName = true;
        string error = "";

        if(txtFirstName.Text == "" && txtLastName.Text== "" && txtGroup.Text == "")
        {
            hasArtistName = false;
            error = "Must fill in at least one name field!";
            lblSuccess.CssClass = "text-danger";
            lblSuccess.Text = error; 
        }
        else
        {
            hasArtistName = true;
            error = "";
            lblSuccess.CssClass = "text-success";
        }

        if(IsValid && hasArtistName)
        {
            lblSuccess.CssClass = "text-success";
            lblSuccess.Text = "Validation Successfull!";
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