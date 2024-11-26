using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;                             //1.Adım==> Kütüphane ekleniyor
using System.Security.Cryptography.X509Certificates;


public class sqlsinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan=new SqlConnection(@"Data Source=ESRA-PC\SA;Initial Catalog=Dbo_yemektarifi;Integrated Security=True ");
        baglan.Open();
        return baglan;
    }
}