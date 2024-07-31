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
        public partial class WebForm1 : System.Web.UI.Page
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True");
            protected void Page_Load(object sender, EventArgs e)
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
                con.Open();
            }

            protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
            {
                if (args.Value.Length == 6)
                    args.IsValid = true;
                else
                    args.IsValid = false;
            }

            protected void Button5_Click(object sender, EventArgs e)
            {
                SqlCommand check = new SqlCommand("select name from credentials where name='"+TextBox7.Text+"'",con);
                SqlDataAdapter sd = new SqlDataAdapter(check);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                if (dt.Rows.Count > 0)
                    Response.Write("<script>alert('This name already exists')</script>");
                else
                {

                    SqlCommand cmd = new SqlCommand("insert into credentials values('" + TextBox7.Text + "','" + TextBox9.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("login.aspx");
                }
                }

            protected void Button6_Click(object sender, EventArgs e)
            {
                Response.Redirect("login.aspx");
            }

        
        }
    }