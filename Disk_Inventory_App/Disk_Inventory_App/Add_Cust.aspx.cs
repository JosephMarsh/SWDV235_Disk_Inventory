using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


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
        if (IsValid)
        {
            lblSuccess.Text = "Validation Successfull!";
        }
    }
}