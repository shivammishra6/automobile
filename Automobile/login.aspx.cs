using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Automobile
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select name from credentials where name='"+TextBox1.Text+"'",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            SqlCommand cmd2 = new SqlCommand("select password from credentials where password='" + TextBox2.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            sd.Fill(dt2);
            if (dt.Rows.Count > 0 && dt2.Rows.Count > 0)
            {
                Session["name"] = TextBox1.Text;
                Response.Redirect("carloan.aspx");
            }
            else
                Response.Write("<script>alert('Invalid credentials')</script>");
        }
    }
}