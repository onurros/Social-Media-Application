import 'package:flutter/material.dart';
import 'package:sociaworld/gonderikarti.dart';

class ProfilSayfasi extends StatelessWidget {

final String? isimSoyad;
final String? kullaniciAdi;
final String? kapakResimlinki;
final String? profilResimLinki;
final String? denemeResimLinki;


  const ProfilSayfasi({super.key,  this.isimSoyad, this.kullaniciAdi,  this.kapakResimlinki,  this.profilResimLinki, this.denemeResimLinki});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 230,
                //color: Colors.yellow,
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  image: NetworkImage(kapakResimlinki!),
                fit:BoxFit.cover)
                ),
              ),
              Positioned(
                left: 20,
                bottom: 0,
                child: Hero(
                  tag: kullaniciAdi!,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(width: 2,color: Colors.white),
                       image: DecorationImage(
                    image: NetworkImage(profilResimLinki!),
                  fit:BoxFit.cover)
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190,
                left: 145,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isimSoyad!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      ),
                      Text(
                      kullaniciAdi!,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                      ),
                  ],
                ),
              ),

              Positioned(
                top: 130,
                right: 15,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:Colors.grey.shade200,
                    border: Border.all(width: 2.0, color: Colors.white)
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle, size:18.0,),
                      SizedBox(width:2.0,),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )
                      
                        )
                    ],
                  ),
                ),
              ),
             IconButton(icon: Icon(Icons.arrow_back,color:Colors.black,),onPressed: (){
                Navigator.pop(context,true);
             }),
            ],
          ),
          SizedBox(
            height: 20,
            
          ),
          Container(
            height: 75,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                
                   sayac("Takipçi","20K"),
                  sayac("Takip","500"),
                   sayac("Paylaşım","75"),

              ],
            ),
          ),
          GonderiKarti(
            isimSoyad: isimSoyad!,
            gecenSure: "1 sene önce",
            aciklama: "Geçen yaz çekildim",
            profilResimLinki: profilResimLinki!,
            gonderiResimLinki: "https://cdn.pixabay.com/photo/2013/07/18/10/56/railroad-163518_960_720.jpg",
            ),
        ],
      ),
    );
  }

  Column sayac(String baslik,String sayi) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sayi,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )),
                    SizedBox(height: 1,),

                    Text(
                    baslik,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600
                    ))
                ],
              );
  }
}