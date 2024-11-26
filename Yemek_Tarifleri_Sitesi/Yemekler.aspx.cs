using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];

            //Kategori Listeleme

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }

        Panel2.Visible = false;
        Panel5.Visible = false;

        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //Silme İşlemi

        if (islem == "sil")
        {
            SqlCommand komut3 = new SqlCommand("Delete From Tbl_Yemekler where Yemekid=@p1 ", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", id);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel5.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        //Yemek Ekleme

        SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (YemekAdı,YemekMalzeme,YemekTarifi,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


        //Kategori Sayısını Arttırma        

        SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set Kategoriadet=Kategoriadet+1 where Kategoriid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}