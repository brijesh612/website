using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace radhe_electronic
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(1,5);
            Image2.ImageUrl = "~/image/" + i.ToString() + ".jpg";

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("addtocart.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
            Label2.Text = "logged out successfull";
        }

        /*protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
            Label2.Text = "logged out suceessfull";

        }*/


    }
}