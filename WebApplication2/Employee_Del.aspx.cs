using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Employee_Del : System.Web.UI.Page, Interface1
    {   
        string strcon = ConfigurationManager.ConnectionStrings["dbdemo"].ConnectionString;
        public void Clear_All()
        {
            TextBox1.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void del_btn_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(strcon);
            try
            {
                sqlConnection.Open();
                SqlCommand updateCommand = new SqlCommand("DELETE FROM demo WHERE id=@id", sqlConnection);
                updateCommand.Parameters.AddWithValue("@id", int.Parse(TextBox1.Text));
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "if (confirm('Press OK to delete!') == false){} else{" + updateCommand.ExecuteNonQuery() + "; alert('Data deleted successfully.');}", true);
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