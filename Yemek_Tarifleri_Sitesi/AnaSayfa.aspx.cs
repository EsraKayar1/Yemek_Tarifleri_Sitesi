using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class AnaSayfa : System.Web.UI.Page
{
    sqlsinif bgl =new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlCommand komut =new  SqlCommand("Select * from tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr=komut.ExecuteReader();      //ExecuteReader() ==>SQL sorgusunu çalıştırır ve sonuçları okumak için bir SqlDataReader nesnesi döndürür. Bu yöntem, sorgunun sonuçlarını dr nesnesine atar.
        DataList2.DataSource = dr;      // Veri kaynağını ayarlamak için kullanılanılır - DataList2 verileri bir liste olarak göndermek için kullanılır
        DataList2.DataBind();           //Bağlamak için kullanılan bir metottur.
    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}