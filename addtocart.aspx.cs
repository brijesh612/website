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
    public partial class addtocart : System.Web.UI.Page
    {
        string str = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Lenovo\source\repos\radhe_electronic\radhe_electronic\App_Data\radhe_electronic1.mdf; Integrated Security = True; MultipleActiveResultSets = True; Application Name = EntityFramework";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\radhe_electronic\radhe_electronic\App_Data\radhe_electronic1.mdf;Integrated Security=True");
        SqlCommand cmd;
        SqlConnection con1;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uid"] == null)
            {
                Response.Redirect("user_login.aspx");
            }
            else
            {
                string n1 = Session["uid"].ToString();
                con.Open();
                cmd = new SqlCommand("select * from addtocart where mobile='"+n1+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
            }

            /*int id = Convert.ToInt32(Request.QueryString["id"]);
            con.Open();
            cmd = new SqlCommand("select * from addtocart", con);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            while (dr.Read())
            {
                id = Convert.ToInt32(dr["id"].ToString());
            }
            con.Close();*/
            if (!IsPostBack)
            {
               
                    disp();
                    total_price();
                
            }
            string n = Session["uid"].ToString();
            con.Open();
            cmd = new SqlCommand("select sum(pprice) from addtocart where mobile='"+n+"'", con);
            SqlDataReader dr1 = cmd.ExecuteReader();
            if(dr1.Read())
            {
                Label2.Text = dr1.GetValue(0).ToString();
            }
            con.Close();
        }
        void disp()
        {

            string n = Session["uid"].ToString();
            con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\radhe_electronic\radhe_electronic\App_Data\radhe_electronic1.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            con1.Open();
            cmd = new SqlCommand("select * from addtocart where mobile='" + n + "'", con1);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con1.Close();


        }

        void total_price()
        {
            string n = Session["uid"].ToString();
            con.Open();
            cmd = new SqlCommand("Select * from addtocart where mobile='" + n + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();
            int total = 0, t = 0;
            while (dr.Read())
            {
                t = Convert.ToInt32(dr["pprice"].ToString());
                total = total + t;
            }
            Label2.Text = total.ToString();
            con.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            /* Response.Write(e.CommandArgument.ToString());
             //con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\radhe_electronic\radhe_electronic\App_Data\radhe_electronic1.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            con.Open();
            // ( e.CommandArgument.ToString());
             cmd = new SqlCommand("delete from addtocart where Id='" + e.CommandArgument.ToString()+ "'", con);
             cmd.ExecuteNonQuery();
             con.Close();
             disp();
             total_price();
             Response.Write("<script>alert('okk')</script>");*/

           /* con.Open();
            cmd = new SqlCommand("delete from addtocart where Id='"+e.CommandArgument.ToString()+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            disp();
            total_price();*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("placeorder.aspx");
        }

      /*  protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int id = Convert.ToInt32(GridView1.Rows[rowindex].Cells[1].Text);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\radhe_electronic\radhe_electronic\App_Data\radhe_electronic1.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete addtocart where id='" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }*/


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
             
           
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
          /*  int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int id = Convert.ToInt32(GridView1.Rows[rowindex].Cells[0].Text);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\radhe_electronic\radhe_electronic\App_Data\radhe_electronic1.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete addtocart where id='" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close(); */
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("product.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void LinkButton1_Click2(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
          
            int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from addtocart where Id=@1", con);
            cmd.Parameters.AddWithValue("@1", ID);
            cmd.ExecuteNonQuery();
            con.Close();
            disp();
            total_price();
            Response.Write("<script>alert('Product Remove Successfull');</script>");
        }




        /*    protected void Button1_Click(object sender, EventArgs e)
            {
                Response.Redirect("placeorder.aspx");
            }

            protected void LinkButton1_Click(object sender, EventArgs e)
            {
                Response.Redirect("product.aspx");
            }

            protected void LinkButton2_Click(object sender, EventArgs e)
            {
                Response.Redirect("placeorder.aspx");
            } */
    }
}
