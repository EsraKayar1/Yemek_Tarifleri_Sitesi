using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    sqlsinif bgl=new sqlsinif(); 
    string Yemekid=" ";
    protected void Page_Load(object sender, EventArgs e)
    {
        Yemekid = Request.QueryString["Yemekid"];

        SqlCommand komut = new SqlCommand("Select YemekAdı From tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Yemekid);
        SqlDataReader dr=komut.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        bgl.baglanti().Close();


                  //Yorumları Listeleme

        SqlCommand komut2 =new SqlCommand("Select * From Tbl_Yorumlar where Yemekid=@p2",bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2",Yemekid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut3 = new SqlCommand("insert into Tbl_Yorumlar (YorumAdıSoyadı,YorumMail,Yorumicerik,Yemekid) values (@k1,@k2,@k3,@k4)",bgl.baglanti());
        komut3.Parameters.AddWithValue("@k1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@k2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@k3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@k4",Yemekid );
        SqlDataReader dr3 = komut3.ExecuteReader();
        DataList2.DataSource = dr3;
        DataList2.DataBind();
        Response.Write("Yorumunuz Alınmıştır");
    }
}