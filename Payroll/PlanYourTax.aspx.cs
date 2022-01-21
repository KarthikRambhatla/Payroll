using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Configuration;
using System.Data;

public partial class PlanYourTax : System.Web.UI.Page
{
    private void Show()
    {
        try
        {
            if (!IsPostBack) {
                int employeeid = Convert.ToInt32(Session["currentemployeeid"]);
                DataTable dt = BusinessAccessLayer.Query("select basicsalary from payslips ps where employeeid=" + employeeid + " and monthname = DATENAME(month,GetDate())");
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        txtBasic.Text = Convert.ToInt32(dr["basicsalary"]).ToString();
                        txtHRA.Text = (Convert.ToInt32(dr["basicsalary"]) * 0.45).ToString();
                        txtPF.Text = (Convert.ToInt32(dr["basicsalary"]) * 0.2).ToString();
                        txtAllowance.Text = (Convert.ToInt32(dr["basicsalary"]) * 0.2).ToString();
                        txtBonus.Text = (Convert.ToInt32(dr["basicsalary"]) * 0.1).ToString();
                    }
                }
            }
                TaxCalc();
            
        }
        catch (Exception ex)
        {
            lblStatus.Text = "Error: " + ex.Message;
        }
    }

    private void TaxCalc()
    {
        int taxable = Convert.ToInt32(txtBasic.Text) + Convert.ToInt32(txtAllowance.Text) + Convert.ToInt32(txtBonus.Text);
        if (taxable * 12 < 500000)
        {
            lblStatus.Text = "Tax deduction amount will be 0";
        }
        else if (taxable * 12 >= 500000 && taxable * 12 < 1000000)
        {
            lblStatus.Text = "Tax deduction amount will be " + ((taxable*12 - 500000) * 0.2).ToString();
        }
        else
        {
            lblStatus.Text = "Tax deduction amount will be " + ((taxable * 12 - 1000000) * 0.3 + 500000*0.2).ToString();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Convert.ToString(Session["currentusertype"]) != "Employee")
                Response.Redirect("welcome.aspx");
            //if (Page.IsPostBack == false)
            {
                //lblEmployee.Text += " <b>" + Convert.ToString(Session["currentemployeename"]) + "</b>";
                Show();
            }
        }
        catch (Exception ex)
        {
            //lblStatus.Text = "Error: " + ex.Message;
        }
    }



    protected void txtBasic_TextChanged(object sender, EventArgs e)
    {
        TaxCalc();
    }

    protected void txtHRA_TextChanged(object sender, EventArgs e)
    {
        TaxCalc();
    }

    protected void txtPF_TextChanged(object sender, EventArgs e)
    {
        TaxCalc();
    }

    protected void txtAllowance_TextChanged(object sender, EventArgs e)
    {
        TaxCalc();
    }

    protected void txtBonus_TextChanged(object sender, EventArgs e)
    {
        TaxCalc();
    }
}