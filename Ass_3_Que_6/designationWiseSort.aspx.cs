using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class designationWiseSort : System.Web.UI.Page
    {
        dbEmployeeDataContext datacontext = new dbEmployeeDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = from Emp in datacontext.Emps
                                   orderby Emp.designation
                                   select Emp;
            GridView1.DataBind();
        }
    }
}