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
    public partial class product : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string pcategory, pname, pimage, pprice;
        string n;

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("user_login.aspx");
                Label5.Text = "login here...";
            }
            else
            {
                string n = Session["uid"].ToString();
                Label5.Text = "logged in as " + Session["uid"].ToString();
            } 
        }


        /* protected void LinkButton1_Click(object sender, EventArgs e)
         {

         //    Response.Redirect("placeorder.aspx");
             if (Session["uid"] == null)
             {
                 Response.Redirect("user_login.aspx");
             }
             else
             {
                 string n = Session["uid"].ToString();
                 con.Open();
                 cmd = new SqlCommand("insert into addtocart(pcategory,pname,pimage,pprice) Values('" + pcategory + "','" + pname + "','" + pimage + "','" + pprice + "')", con);
                 cmd.ExecuteNonQuery();
                 con.Close();
                // Response.Redirect("addtocart.aspx");
                 //Response.Write(pcategory + pname + pimage + pprice);
             }
         }*/

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("user_login.aspx");
            }
            else
            {

                string pname = "", pcat = "", img = "", pri = "", mobile = "";
                if (e.CommandName == "SelectType")
                {
                    string n1 = Session["uid"].ToString();
                    int id = Convert.ToInt32(e.CommandArgument.ToString());
                    //Response.Write(id.ToString());
                    //Response.Redirect("addtocart.aspx?id="+id+"");
                    SqlCommand cmd = new SqlCommand("select * from addproduct where id='" + id + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        pcat = dr.GetValue(1).ToString();
                        pname = dr.GetValue(2).ToString();
                        img = dr.GetValue(3).ToString();
                        pri = dr.GetValue(4).ToString();
                    }
                    dr.Close();

                    SqlCommand cmd1 = new SqlCommand("insert into addtocart values('" + pcat + "','" + pname + "','" + img + "','" + pri + "','" + n1 + "')", con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('okk')</script>");
                   /* int res = cmd1.ExecuteNonQuery();
                    if(res>0)
                    {
                        Response.Redirect("addtocart.aspx");
                    }*/
                }
                //Response.Write(pname+" "+pcat+" "+img+" "+pri);


                /*Response.Write(e.CommandArgument.ToString());
                if (Session["uid"] == null)
                {
                    Response.Redirect("user_login.aspx");
                }
                else
                {
                    string n = Session["uid"].ToString();
                    con.Open();
                    cmd = new SqlCommand("insert into addtocart(pcategory,pname,pimage,pprice) Values('" + pcategory + "','" + pname + "','" + pimage + "','" + pprice + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("addtocart.aspx");
                    //Response.Write(pcategory + pname + pimage + pprice);
                }*/
            }
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label l2 = (Label)e.Item.FindControl("Label2");
            pcategory = l2.Text;

            Label l3 = (Label)e.Item.FindControl("Label3");
            pname = l3.Text;

            Image i3 = (Image)e.Item.FindControl("image3");
            pimage = i3.ImageUrl;

            Label l4 = (Label)e.Item.FindControl("Label4");
            pprice = l4.Text;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\radhe_electronic\radhe_electronic\App_Data\radhe_electronic1.mdf;Integrated Security=True");
            con.Open();
            if (Request.QueryString["m"] != null)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from addproduct where pcategory='" + Request.QueryString["m"] + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                con.Close();
                //  Response.Write("success");
            }
            /*   else
               {
                   con.Open();
                   cmd = new SqlCommand("select * from addproduct", con);
                   SqlDataReader dr = cmd.ExecuteReader();
                   DataList1.DataSource = dr;
                   DataList1.DataBind();
                   con.Close();
               }*/
        }

        /*  protected void Button1_Click(object sender, EventArgs e)
          {
              if (Session["uid"] == null)
              {
                  Response.Redirect("user_login.aspx");
              }
              else
              {
                  string n = Session["uid"].ToString();
                  con.Open();
                  cmd = new SqlCommand("insert into addtocart(pcategory,pname,pimage,pprice) Values('" + pcategory + "','" + pname + "','" + pimage + "','" + pprice + "')", con);
                  cmd.ExecuteNonQuery();
                  con.Close();
                  Response.Redirect("addtocart.aspx");
                  //Response.Write(pcategory + pname + pimage + pprice);
              }
          }*/
    }


}


