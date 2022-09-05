import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sociaworld/profilsayfasi.dart';

import 'gonderikarti.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var denemeResimLinki;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32.0,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Sociaworld",
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.purple.shade300,
                size: 32.0,
              ),
              onPressed: () {
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Column(children: [
                    duyuru("Kamil seni takip etti","3 dk önce"),
                    duyuru("Seda gönderine yorum yaptı","1 gün önce"),
                    duyuru("Cüneyt measj gönderdi","2 hafta önce"),
                  ],);
                });
              })
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey.shade100, boxShadow: [
              BoxShadow(
                  blurRadius: 5.0,
                  offset: Offset(0.0, 3.0),
                  color: Colors.grey),
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilKartiOlustur(
                  "Selçuk",
                  "https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_960_720.jpg",
                  "Selçuk Mert",
                  "https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Tom",
                  "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg",
                  "Tom Watson",
                  "https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2016/11/06/05/36/lake-1802337_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Jessica",
                  "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_960_720.jpg",
                  "Jessica Lopez",
                  "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2018/06/09/17/25/trees-3464777_960_720.jpg"
                ),
                profilKartiOlustur(
                  "Belma",
                  "https://cdn.pixabay.com/photo/2020/09/18/05/58/lights-5580916_960_720.jpg",
                  "Belma Zorlu",
                  "https://cdn.pixabay.com/photo/2012/03/01/00/21/bridge-19513_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2016/04/20/19/47/wolves-1341881_960_720.jpg"
                ),
                profilKartiOlustur(
                  "Yıldız",
                  "https://cdn.pixabay.com/photo/2016/07/22/16/54/portrait-1535266_960_720.jpg",
                  "Yıldız Mars",
                  "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Engin",
                  "https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003_960_720.jpg",
                  "Engin Çakıl",
                  "https://cdn.pixabay.com/photo/2018/08/10/03/19/pathway-3596034_960_720.jpg",
                  "https://cdn.pixabay.com/photo/2013/07/18/10/56/railroad-163518_960_720.jpg",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(
            isimSoyad: "Hakan Yaldız",
            gecenSure: "1 sene önce",
            aciklama: "Geçen yaz çekildim",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_960_720.jpg",
          ),
          GonderiKarti(
            isimSoyad: "Selda Mert",
            gecenSure: "2 ay önce",
            aciklama: "Manzaraya hayran kaldım",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_960_720.jpg",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple.shade300,
        child: Icon(Icons.add_a_photo, color: Colors.white,),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          mesaj,style: TextStyle(fontSize: 15.0),
                        ),
                         Text(
                          gecenSure
                        ),
                        
                      ],
                    ),
                  );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimlinki,
      String isimSoyad, String kapakResimlinki, String ortaresim) {
    return Material(
      child: InkWell(
        onTap: () async {
        bool? donenVeri=await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    profilResimLinki: resimlinki,
                    kullaniciAdi: kullaniciAdi,
                    isimSoyad: isimSoyad,
                    kapakResimlinki: kapakResimlinki,
                    denemeResimLinki:ortaresim,
                  )));
          print(donenVeri);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                              image: NetworkImage(resimlinki),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}


//ListView  : Ekrana sığmayan yazıları kaydırma özelliği