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
    public partial class Employee_Display : System.Web.UI.Page
    {
        SqlConnection sqlConnection=new SqlConnection("Data Source=MOBACK;Initial Catalog=EmployeeManagement;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sqlConnection.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM demo", sqlConnection);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sqlDataAdapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();


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