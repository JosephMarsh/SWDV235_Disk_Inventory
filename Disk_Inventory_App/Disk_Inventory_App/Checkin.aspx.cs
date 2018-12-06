using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Checkin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        lbxMovies.ClearSelection();
        lbxMovies.DataBind();
        lblSuccess.Text = "";
        lblSuccess.CssClass = "text-success";
    }

    protected void btnCheckIn_Click(object sender, EventArgs e)
    {
        //Store SQL update data for Rental log
        var parametersLog = SqlDataSource1.UpdateParameters;
        parametersLog["disk_ID"].DefaultValue = lbxMovies.SelectedValue;
        parametersLog["check_in_date"].DefaultValue = DateTime.Now.ToString();

        //Store SQL update Data for disk Status.
        var parametersDisk = SqlDataSourceMovieList.UpdateParameters;
        parametersDisk["disk_ID"].DefaultValue = lbxMovies.SelectedValue;
        parametersDisk["status_code_ID"].DefaultValue = "2";//sets status to available


        if (IsValid)
        {
            try
            {
                SqlDataSource1.Update();
                SqlDataSourceMovieList.Update();

                //Display Success
                lblSuccess.Text = lbxMovies.SelectedItem +
                    ", successfully returned!";
                lblSuccess.CssClass = "text-success";

                //refresh list boxes
                lbxMovies.ClearSelection();
                lbxMovies.DataBind();
            }
            catch(Exception ex)
            {
                //Display error message
                lblSuccess.CssClass = "text-danger";
                lblSuccess.Text = "Failed to Return disk : " + ex.Message;
            }
        }
    }
}