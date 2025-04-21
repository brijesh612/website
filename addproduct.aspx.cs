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
    public partial class addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("admin_login.aspx");
            }
            else
            {
                // Response.Write(Session["username"]);
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_product.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\radhe_electronic\radhe_electronic\App_Data\radhe_electronic1.mdf;Integrated Security=True");
            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Image/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Image/") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into addproduct(pcategory,pname,pprice,pimage)values('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + filepath + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Product Added Successfull');</script>");
                // Response.Redirect("add_product.aspx");
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}