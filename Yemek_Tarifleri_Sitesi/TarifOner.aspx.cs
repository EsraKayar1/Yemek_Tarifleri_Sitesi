using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    sqlsinif bgl=new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  

    protected void BtnTarifOner_Click(object sender, EventArgs e)
    {
                //veritabaına veri eklemek için kullanılan komut

        SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);          //"komut.Paremeters"==> SQL komutuna parametre eklemeyi sağlar.
        komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);       //Bu, SQL sorgularında dışarıdan alınan verilerin güvenli bir şekilde eklenmesine olanak tanır.
        komut.Parameters.AddWithValue("@t3", TxtYapilis.Text);          //"AddWithValue("@t1", TxtTarifAd.Text)" ==> @t3 parametresine, TxtYapilis adlı kontrolün Text değerini ekler.
        komut.Parameters.AddWithValue("@t4", FileResimOner.FileName);   //Yani TarifAd alanına, kullanıcıdan alınan tarif adı değeri eklenir.
        komut.Parameters.AddWithValue("@t5", TxtTarifOneren.Text);
        komut.Parameters.AddWithValue("@t6", TxtMailAdresi.Text);
        komut.ExecuteNonQuery();                                        //SQL komutunu çalıştırır.Genellikle etkilenen satır sayısını döndürür.
        bgl.baglanti().Close();                                         //Veritabanı bağlantısını kapatır.
        Response.Write("Tarifiniz Alınmıştır");                         // Web sayfasına doğrudan metin yazdırır.
    }
}