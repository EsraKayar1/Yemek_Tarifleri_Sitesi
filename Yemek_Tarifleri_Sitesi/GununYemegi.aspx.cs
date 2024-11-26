using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununYemegi : System.Web.UI.Page
{
    sqlsinif bgl=new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Veri tabanından sorgu çekmek için kullanılan komut

        SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where durum=1", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource=oku;                   //   Veri Kaynagından datalist2ye oku
        DataList2.DataBind();                       //   Verileri datalist2 ye bagla

    }
}