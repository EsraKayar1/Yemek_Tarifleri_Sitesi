﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDüzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];        //Diğer Formdan Taşınacak Değer (Formlar Arası Geçiş)
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select *from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }
        if (Page.IsPostBack == false)
        {
            //Kategori Listeleme

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

        SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAdı=@p1,YemekMalzeme=@p2,YemekTarifi=@p3,Kategoriid=@p4,YemekResim=@p6 where Yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p6", "~/resimler/"+FileUpload1.FileName);
        komut.Parameters.AddWithValue("@p5", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    //Tüm Yemeklerin Durumunu False Yaptık!!
    protected void Button2_Click1(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


        //Tüm Yemeklerin id ye göre True Yapılacak
        SqlCommand komut1 = new SqlCommand("Update Tbl_Yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1",id);
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}