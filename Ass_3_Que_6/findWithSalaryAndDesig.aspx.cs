using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class findWithSalaryAndDesig : System.Web.UI.Page
    {
        dbEmployeeDataContext datacontext = new dbEmployeeDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_data();
                load_dropdown();
            }
        }

        protected void load_data()
        {
            GridView1.DataSource = datacontext.Emps;
            GridView1.DataBind();
        }

        protected void load_dropdown()
        {
            dldesig.DataSource = datacontext.Designations;
            dldesig.DataTextField = "desg_name";
            dldesig.DataValueField = "desg_id";
            dldesig.DataBind();
        }

        protected void btnfind_Click(object sender, EventArgs e)
        {
            try
            {
                GridView1.DataSource = from Emp in datacontext.Emps
                                       where Convert.ToInt32(Emp.salary) > Convert.ToInt32(txtsalary.Text)
                                       where Emp.designation == dldesig.SelectedItem.ToString()
                                       select Emp;
                GridView1.DataBind(); 
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                txtsalary.Text = null;
            }
        }
    }
}