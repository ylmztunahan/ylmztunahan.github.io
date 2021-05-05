import 'package:flutter/material.dart';
import 'package:vizeodevi/homepage.dart';

class ProfilePage extends StatelessWidget {
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
        title: Text("Tunahan yılmaz",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
                actions: [IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.blue[300],
              iconSize: 32.0,
              onPressed: () {})],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 7.0),
                  blurRadius: 7.0),
            ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90.0),
                            color: Colors.indigo,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://instagram.fadb3-2.fna.fbcdn.net/v/t51.2885-19/s320x320/35616915_255023318595189_8651342522569719808_n.jpg?tp=1&_nc_ht=instagram.fadb3-2.fna.fbcdn.net&_nc_ohc=Vjcx7w36ROoAX-nmkRi&edm=ABfd0MgBAAAA&ccb=7-4&oh=407275d487ae57dd90fe861b7cf7d07c&oe=60AD8231&_nc_sid=7bff83"))),
                      ),
                      Text(
                        "Tunahan yılmaz",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "@ylmaz_tunahan",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        sayac("Gönderi", "15"),
                        sayac("Takip", "300"),
                        sayac("Takipçi", "426")
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Colors.blue,
                          border: Border.all(width: 2.0, color: Colors.white)),
                      height: 40.0,
                      width: 150.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.add_circle,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          Text("Takip Et",
                              style: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          AddPost(
            isim: "Tunahan Yilmaz",
            zaman: "3 saat önce",
            profilresmi:
                "https://instagram.fadb3-2.fna.fbcdn.net/v/t51.2885-19/s320x320/35616915_255023318595189_8651342522569719808_n.jpg?tp=1&_nc_ht=instagram.fadb3-2.fna.fbcdn.net&_nc_ohc=Vjcx7w36ROoAX-nmkRi&edm=ABfd0MgBAAAA&ccb=7-4&oh=407275d487ae57dd90fe861b7cf7d07c&oe=60AD8231&_nc_sid=7bff83",
            gonderi:
                "Avengers: Age of Ultron filmiyle de başka bir şekilde ölüme meydan okuyor Tony. Hulk’tan yakın mesafeden yediği inanılmaz kuvvetli yumruklara dayanarak yapıyor bunu. Infinity War’da üzerine bir ay parçalayıp fırlatıyor Thanos ama o yine aldırış etmiyor. Ayrıca Civil War’da ona nerdeyse iç kanama geçirtmesi gereken Captain America kalkanının darbelerini göğsüne yese de bana mısın demiyor “Demir Adam”. Son olarak da onu bu denli zeki yapan şeyin de az miktarda Super Soldier Serum olabileceğini söylüyorlar.",
          ),
          AddPost(
            isim: "Tunahan Yilmaz",
            zaman: "3 saat önce",
            profilresmi:
                "https://instagram.fadb3-2.fna.fbcdn.net/v/t51.2885-19/s320x320/35616915_255023318595189_8651342522569719808_n.jpg?tp=1&_nc_ht=instagram.fadb3-2.fna.fbcdn.net&_nc_ohc=Vjcx7w36ROoAX-nmkRi&edm=ABfd0MgBAAAA&ccb=7-4&oh=407275d487ae57dd90fe861b7cf7d07c&oe=60AD8231&_nc_sid=7bff83",
            gonderi:
                "Avengers: Age of Ultron filmiyle de başka bir şekilde ölüme meydan okuyor Tony. Hulk’tan yakın mesafeden yediği inanılmaz kuvvetli yumruklara dayanarak yapıyor bunu. Infinity War’da üzerine bir ay parçalayıp fırlatıyor Thanos ama o yine aldırış etmiyor. Ayrıca Civil War’da ona nerdeyse iç kanama geçirtmesi gereken Captain America kalkanının darbelerini göğsüne yese de bana mısın demiyor “Demir Adam”. Son olarak da onu bu denli zeki yapan şeyin de az miktarda Super Soldier Serum olabileceğini söylüyorlar.",
          ),
        ],
      ),
    );
  }

  Padding sayac(String baslik, String sayi) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            sayi,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            baslik,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
