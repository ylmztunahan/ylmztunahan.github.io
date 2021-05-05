import 'package:flutter/material.dart';

class CommentPage extends StatelessWidget {
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
        title: Text(
          "Yorumlar",
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 7.0),
                            blurRadius: 7.0),
                      ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(40.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://instagram.fadb3-2.fna.fbcdn.net/v/t51.2885-19/s320x320/35616915_255023318595189_8651342522569719808_n.jpg?tp=1&_nc_ht=instagram.fadb3-2.fna.fbcdn.net&_nc_ohc=Vjcx7w36ROoAX-nmkRi&edm=ABfd0MgBAAAA&ccb=7-4&oh=407275d487ae57dd90fe861b7cf7d07c&oe=60AD8231&_nc_sid=7bff83"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Tunahan Yılmaz",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "3 saat önce",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, bottom: 8.0),
                            child: Text(
                                "Bu bir denem yazısıdır, yorumlar buraya yazılacaktır",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, -3.0),
                        blurRadius: 7.0),
                  ]),
              height: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
