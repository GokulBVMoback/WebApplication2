using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Employee_Search : System.Web.UI.Page,Interface1
    {
        SqlConnection sqlConnection = new SqlConnection("Data Source=MOBACK;Initial Catalog=EmployeeManagement;Integrated Security=True");

        public void Clear_All()
        {
            TextBox1.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void search_btn_Click(object sender, EventArgs e)
        {
            try
            {
                sqlConnection.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM demo WHERE id=@id", sqlConnection);
                cmd.Parameters.AddWithValue("@id", int.Parse(TextBox1.Text));
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sqlDataAdapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Clear_All();
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