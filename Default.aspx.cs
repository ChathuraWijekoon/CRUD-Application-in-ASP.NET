using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sample_App
{
    public partial class _Default : Page
    {

        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-CKOPJQ7\SQLEXPRESS;Initial Catalog=CRUD;User ID=sa;Password=1234");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                GetEmployeeList();
            }
        }

        void GetEmployeeList()
        {
            SqlCommand selectcmd = new SqlCommand("select * from Employee", conn);
            SqlDataAdapter sd = new SqlDataAdapter(selectcmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(txtempID.Text);
            string empname = txtempName.Text;
            string city = drpDwncity.SelectedValue;
            string sex = radLstSex.SelectedValue;
            string contact = txtContact.Text;
            double age = double.Parse(txtAge.Text);
            DateTime joindate = DateTime.Parse(txtJoinDate.Text);

            conn.Open();
            SqlCommand insertcmd = new SqlCommand("insert into Employee values ('" + empid + "','" + empname + "','" + city + "','"+ sex + "','" + joindate + "','" + contact + "','" + age + "')",conn);
            insertcmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Saved!');", true);

            GetEmployeeList();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(txtempID.Text);
            string empname = txtempName.Text;
            string city = drpDwncity.SelectedValue;
            string sex = radLstSex.SelectedValue;
            string contact = txtContact.Text;
            double age = double.Parse(txtAge.Text);
            DateTime joindate = DateTime.Parse(txtJoinDate.Text);

            conn.Open();
            SqlCommand updatecmd = new SqlCommand("update Employee set empName = '" + empname + "',city = '" + city + "',sex = '" + sex + "',joinedDate = '" + joindate + "',contact = '" + contact + "',age = '" + age + "' where empID = '"+empid+"'", conn);
            updatecmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated!');", true);

            GetEmployeeList();
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(txtempID.Text);
            conn.Open();
            SqlCommand updatecmd = new SqlCommand("delete from Employee where empID = '"+empid+"'", conn);
            updatecmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted!');", true);

            GetEmployeeList();
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(txtempID.Text);
            SqlCommand selectcmd = new SqlCommand("select * from Employee where empID = '"+empid+"'",conn);
            SqlDataAdapter sd = new SqlDataAdapter(selectcmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();  
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            GetEmployeeList();
        }
    }
}