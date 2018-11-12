using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_Disk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            lblSuccess.Text = "Validation Successfull!";
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtDiskName.Text = "";
        txtRelDate.Text = "";
        ddlGenre.SelectedIndex = 0;
        ddlStatus.SelectedIndex = 0;
        ddlType.SelectedIndex = 0;
        lblSuccess.Text = "";
    }
}