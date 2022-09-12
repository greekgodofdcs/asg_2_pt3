using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class addEmployee : System.Web.UI.Page
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

        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    string strname = FileUpload1.FileName.ToString();
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
                    string path = "~/upload/" + strname;
                    lblmsg.Visible = true;
                    lblmsg.Text = "Image Uploaded successfully";

                    Emp em = new Emp();
                    em.name = txtname.Text;
                    em.dob = Calendar1.SelectedDate.Date.ToShortDateString();
                    em.designation = dldesignation.SelectedItem.ToString();
                    em.dept = dldepartment.SelectedItem.ToString();
                    em.salary = txtsalary.Text;
                    em.cv = path;
                    datacontext.Emps.InsertOnSubmit(em);
                    datacontext.SubmitChanges();
                }
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                load_data();
                txtname.Text = null;
                txtsalary.Text = null;
            }
           
        }
    }
}