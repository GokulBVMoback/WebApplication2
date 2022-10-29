using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Employee_Upt : System.Web.UI.Page,Interface1
    {
        SqlConnection sqlConnection = new SqlConnection("Data Source=MOBACK;Initial Catalog=EmployeeManagement;Integrated Security=True");
        public void Clear_All()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = DateTime.Today.ToString();
            RadioButtonList1.SelectedValue = RadioButtonList1.Items[0].ToString();
            TextBox4.Text = "";
            TextBox5.Text = "";

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                sqlConnection.Open();
                SqlCommand cmd = new SqlCommand("UPDATE demo SET EmpName=@name, Age=@age, DOB=@dob, Genter=@gender, Department=@depart, Salary=@salary WHERE id=@id;", sqlConnection);
                cmd.Parameters.AddWithValue("@id", int.Parse(TextBox6.Text));
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@age", int.Parse(TextBox2.Text));
                cmd.Parameters.AddWithValue("@dob", DateTime.Parse(TextBox3.Text));
                cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@depart", TextBox4.Text);
                cmd.Parameters.AddWithValue("@salary", int.Parse(TextBox5.Text));
                cmd.ExecuteNonQuery();
                sqlConnection.Close();
                Clear_All();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Data updated successfully.';)", true);


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