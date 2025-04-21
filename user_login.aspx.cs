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
    public partial class user_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\radhe_electronic\radhe_electronic\App_Data\radhe_electronic1.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from signup where username='"+TextBox1.Text+"' and mobile='"+TextBox2.Text+"' and password='"+TextBox3.Text+"'",con);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                if(dr.HasRows)
                {
                    string c1 = dr.GetValue(1).ToString();
                    string c2 = dr.GetValue(3).ToString();
                    string c3 = dr.GetValue(5).ToString();

                    if(c1 == TextBox1.Text && c2 == TextBox2.Text && c3 == TextBox3.Text)
                    {
                        Session["uid"] = TextBox2.Text;
                        Response.Redirect("home.aspx");
                    }
                }
                else
                {
                    Response.Write("Login Not Success & Try Again");
                }
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

            }
        }
    }
}