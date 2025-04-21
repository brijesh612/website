using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace radhe_electronic
{
    public partial class admin_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\electronic_shop\electronic_shop\App_Data\Database1.mdf;Integrated Security=True");
      //  int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from admin where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect("home1.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login Not Successfull...')</script>");
            }
        }
    }
}