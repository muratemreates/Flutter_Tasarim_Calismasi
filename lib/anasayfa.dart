import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasarim_calismasi2/Renkler/renkler.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    //Ekran boyutuna göre otomatik şekillenme kodu
    var ekranbilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranbilgisi.size.height;
    final double ekranGenisligi = ekranbilgisi.size.width;
    print("Ekran Yukskelik : $ekranYuksekligi  --- Ekran Genişliği :  $ekranGenisligi");

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: ekranGenisligi,
          color: Colors.black,
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back),color: acikYesilRenk,iconSize: 35),
              const Spacer(),
              IconButton(onPressed: (){},icon: const Icon(Icons.favorite_border_outlined),color: acikYesilRenk,iconSize: 35,),
            ],
          ),
        ),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SizedBox(height: ekranYuksekligi/3,width: ekranGenisligi,child: Image.asset("images/rdr2.png")),
              ),Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star,color: turkuazRenk),
                        Text("9.2",style: GoogleFonts.aBeeZee(color: kapaliYesiRenk,fontSize: 18,fontWeight: FontWeight.bold)), //TextStyle(color: kapaliYesiRenk,fontSize: 16,fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.group,color: turkuazRenk),
                        Text("Multiplayer",style: GoogleFonts.aBeeZee(color: kapaliYesiRenk,fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.thumb_up,color: turkuazRenk,),
                        Text("Excellent",style: GoogleFonts.aBeeZee(color: kapaliYesiRenk,fontSize: 18,fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              Text("Red Dead Redemption II",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: turkuazRenk),),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Text("Hikâye, 1899'da Batı, Ortabatı ve Güney ABD'nın kurgusal bir temsilinde geçmektedir. Oyuncu, oyunun başlarında Van der Linde çetesinin bir üyesi olan kanun kaçağı Arthur Morgan'ı oynamaktadır; sonsözde ise yine çetenin bir üyesi olmuş ancak sonradan çete ile yollarını ayırmış John Marston'ı oynamaktadır, John Marston karakterinin yaşam hikâyesi ise serinin ilk oyunu Red Dead Redemption'de devam eder.",style: GoogleFonts.aBeeZee(fontSize: 14,color: acikYesilRenk),softWrap: true),
              ),
              Expanded(
                child: Row(
                  children: [
                    TextButton(onPressed: (){},style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[400],fixedSize: Size(ekranGenisligi/2.5, ekranYuksekligi/11),
                        shape: const RoundedRectangleBorder(borderRadius:  BorderRadius.all(Radius.circular(15)))),
                        child: Text("Price 59.90 \$",style: GoogleFonts.aBeeZee(fontSize: 18,color: kapaliYesiRenk,fontWeight: FontWeight.bold))),
                    const Spacer(),
                    TextButton(onPressed: (){},style: TextButton.styleFrom(
                            backgroundColor: turkuazRenk,fixedSize: Size(ekranGenisligi/2, ekranYuksekligi/11),
                            shape: const RoundedRectangleBorder(borderRadius:  BorderRadius.all(Radius.circular(15)))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.shopping_cart,color: Colors.white,size: 30,),
                            Text("Add to cart",style: GoogleFonts.aBeeZee(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold)),
                          ],
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
