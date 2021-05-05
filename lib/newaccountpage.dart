import 'package:flutter/material.dart';
import 'package:vizeodevi/homepage.dart';

class NewAcocountpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Kayıt Ekranı",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),
          //Resim Ekleme
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  child: Icon(
                    Icons.add_a_photo,
                    size: 50.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5.0),
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.grey[300],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          //Kullanıcı Bilgisi Ekleme
          Kullanicibilgiekleme(bilgi: "İsim",),
          Kullanicibilgiekleme(bilgi: "Soyad",),
          Kullanicibilgiekleme(bilgi: "Kullanıcı Adı",),
          Kullanicibilgiekleme(bilgi: "E-mail",),

          SizedBox(height: 20.0,),
          
          Column(children: [
            InkWell(
              onTap: (){
                 Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Homepage()));
              },
                          child: Container(
                width: 200.0,
                height: 75.0,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue,),
                child:Center(child:  Text("Kayıt Ol",style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),),
            )
          ],),
          SizedBox(height: 30.0,)
        ],
      ),
    );
  }
}

class Kullanicibilgiekleme extends StatelessWidget {
   final String bilgi;
  const Kullanicibilgiekleme({
    Key key, this.bilgi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            bilgi,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
      ],
    );
  }
}
