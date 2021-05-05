import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vizeodevi/movieinfopage.dart';
import 'package:vizeodevi/profilepage.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      //AppBarr
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          iconSize: 35.0,
          onPressed: () {},
        ),
        title: Text(
          "MovieTeo",
          style: TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              iconSize: 35.0,
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 7.0),
                  blurRadius: 7.0),
            ]),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                addmovie(),
                addmovie(),
              ],
            ),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Ana Sayfa"),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Arama"),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("profile"),
              backgroundColor: Colors.blue)
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Material addmovie() {
    return Material(
      child: InkWell(
        onTap: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MovieInfoPage()));},
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(35.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_UY1200_CR90,0,630,1200_AL_.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Avengers",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//add post
class AddPost extends StatelessWidget {
  final String isim;
  final String zaman;
  final String profilresmi;
  final String gonderi;
  const AddPost({
    Key key,
    this.isim,
    this.zaman,
    this.profilresmi,
    this.gonderi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        elevation: 5.0,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(profilresmi),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10.0,
                          height: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              isim,
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(zaman,
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    gonderi,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Beğen",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )),
                  FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Yorum Yap",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )),
                  FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Paylaş",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
