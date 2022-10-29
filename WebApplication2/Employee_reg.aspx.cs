using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Employee_reg : System.Web.UI.Page,Interface1
    {
        SqlConnection sqlConnection = new SqlConnection("Data Source=MOBACK;Initial Catalog=EmployeeManagement;Integrated Security=True");

        public void Clear_All ()
        {
            TextBox1.Text= "";
            TextBox2.Text = "";
            TextBox3.Text = DateTime.Today.ToString();
            RadioButtonList1.SelectedValue = RadioButtonList1.Items[0].ToString();
            TextBox4.Text = "";
            TextBox5.Text = "";
           
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                //sqlConnection.Open();
                //string empName = TextBox1.Text, gender = RadioButtonList1.SelectedValue, department = TextBox4.Text;
                //int age = int.Parse(TextBox2.Text), salary = int.Parse(TextBox5.Text);
                //DateTime DOB = DateTime.Parse(TextBox3.Text);
                //string createQuery = "SP_Create '" + empName + "'," + age + "," + DOB + ",'" + gender + "','" + department + "'," + salary;
                //SqlCommand cmd = new SqlCommand(createQuery,sqlConnection);
                //cmd.ExecuteNonQuery();
                sqlConnection.Open();
                SqlCommand cmd = new SqlCommand("Insert INTO demo(EmpName,Age,DOB,Genter,Department,Salary) values (@name,@age, @dob,@gender,@depart,@salary)",sqlConnection);
                cmd.Parameters.AddWithValue("@name",TextBox1.Text);
                cmd.Parameters.AddWithValue("@age", int.Parse(TextBox2.Text));
                cmd.Parameters.AddWithValue("@dob", DateTime.Parse(TextBox3.Text));
                cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@depart", TextBox4.Text);
                cmd.Parameters.AddWithValue("@salary", int.Parse(TextBox5.Text));
                cmd.ExecuteNonQuery();
                sqlConnection.Close();
                Clear_All();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Data added successfully.')", true);

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                sqlConnection.Close();
            }
        }
    }
}