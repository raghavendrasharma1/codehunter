using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gridfinal
{
    public partial class grid : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hotelConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SHARMA-PC;Initial Catalog=hotel;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"select '~/hotelimg/'+image as image,name,address,hid,'~/hotelimg/'+image2 as image2 from dbo.HTLIMG2", con);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
    }
}