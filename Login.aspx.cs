using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static SchoolManagementSystem.Models.CommonFn;

namespace SchoolManagementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = inputEmail.Value.Trim();
            string password = inputPassword.Value.Trim();
            string selectedUserRole = userRoles.SelectedValue.Trim();
            //string role = "Admin"
            DataTable dt = fn.Fetch("Select * from Teacher where Email = '"+email+"' and password = '"+password+"' ");
            DataTable ds = fn.Fetch("Select * from Student where RollNo = '" + email + "' and password = '" + password + "' ");
            //email == "Admin" && password == "0000"
            if (selectedUserRole == "Admin" && email == "Admin" && password == "123")
            {
                Session["admin"] = email;
                Response.Redirect("Admin/AdminHome.aspx");
            }
            else if (dt.Rows.Count > 0 && selectedUserRole == "Teacher")
            {
                Session["staff"] = email;
                Response.Redirect("Teacher/TeacherHome.aspx");
            }
            else if (ds.Rows.Count > 0 && selectedUserRole == "Student")
            {
                Session["student"] = email;
                Response.Redirect("Student/StudentHome.aspx");
            }
            else
            {
                lblMsg.Text = "Login Failed!!";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}