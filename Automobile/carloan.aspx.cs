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
    public partial class carloan : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            if (Session["name"] == null)
                Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand check = new SqlCommand("select Car_Loan_Id from carloan where Car_Loan_Id='" + TextBox1.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(check);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
                Response.Write("<script>alert('This id already exists')</script>");
            else
            {
                int p=Convert.ToInt32(TextBox7.Text);
                int years=Convert.ToInt32(TextBox8.Text);
                int r=Convert.ToInt32(TextBox9.Text);
                int si=p*years*r/100;
                int ci = si + p;
                int final = ci / (years * 12);
                SqlCommand ins = new SqlCommand("insert into carloan values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" +  p+ "','" + years + "','" + r + "','"+final+"')", con);
                ins.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                Label9.Text = "Car added successfully ✅";
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Label10.Text = "Report:";
            SqlCommand check = new SqlCommand("select * from carloan where Car_Loan_Id='" + TextBox10.Text + "'", con);
            check.ExecuteNonQuery();
            SqlDataAdapter sd = new SqlDataAdapter(check);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label9.Text = "Report Ready! Scroll down 👇";
        }

        
    }
}