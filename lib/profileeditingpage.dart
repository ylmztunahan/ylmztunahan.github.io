import 'package:flutter/material.dart';

class ProfileEditingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10.0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            iconSize: 32.0,
            onPressed: () {}),
        title: Text("Düzenleme",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.done),
              color: Colors.blue[300],
              iconSize: 32.0,
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90.0),
                      color: Colors.indigo,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://instagram.fadb3-2.fna.fbcdn.net/v/t51.2885-19/s320x320/35616915_255023318595189_8651342522569719808_n.jpg?tp=1&_nc_ht=instagram.fadb3-2.fna.fbcdn.net&_nc_ohc=Vjcx7w36ROoAX-nmkRi&edm=ABfd0MgBAAAA&ccb=7-4&oh=407275d487ae57dd90fe861b7cf7d07c&oe=60AD8231&_nc_sid=7bff83"))),
                ),
              ),
              KullaniciBilgiDuzenleme(
                bilgi: "İsim",
              ),
              KullaniciBilgiDuzenleme(
                bilgi: "Soyad",
              ),
              KullaniciBilgiDuzenleme(
                bilgi: "Kullanıcı Adı",
              ),
              KullaniciBilgiDuzenleme(
                bilgi: "E-mail",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class KullaniciBilgiDuzenleme extends StatelessWidget {
  final String bilgi;
  const KullaniciBilgiDuzenleme({
    Key key,
    this.bilgi,
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
