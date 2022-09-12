using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class editEmployee : System.Web.UI.Page
    {
        dbEmployeeDataContext datacontext = new dbEmployeeDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_data();
                load_dropdownlist();
            }
        }

        protected void load_data()
        {
            GridView1.DataSource = datacontext.Emps;
            GridView1.DataBind();
        }

        protected void load_dropdownlist()
        {
            dldepartment.DataSource = datacontext.Departments;
            dldepartment.DataTextField = "dept_name";
            dldepartment.DataValueField = "dept_id";
            dldepartment.DataBind();
            dldesignation.DataSource = datacontext.Designations;
            dldesignation.DataTextField = "desg_name";
            dldesignation.DataValueField = "desg_id";
            dldesignation.DataBind();
        }

        protected void btnfind_Click(object sender, EventArgs e)
        {
            if (txtempno.Text != null)
            {
                txtsalary.Text = (from Emp in datacontext.Emps
                                  where Emp.eno == Convert.ToInt32(txtempno.Text)
                                  select Emp.salary).FirstOrDefault();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            try
            {
                int empno = Convert.ToInt32(txtempno.Text);
                Emp em = datacontext.Emps.Single(Emp => Emp.eno == empno);
                em.designation = dldesignation.SelectedItem.ToString();
                em.dept = dldepartment.SelectedItem.ToString();
                em.salary = txtsalary.Text;
                datacontext.SubmitChanges();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                load_data();
                txtsalary.Text = null;
            }
        }
    }
}