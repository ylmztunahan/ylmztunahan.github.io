import 'package:flutter/material.dart';

class AddPostPage extends StatelessWidget {
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
          "Paylaşım",
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 8.0,
          child: Container(
            color: Colors.white,
            height: 280.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60.0,
                        height: 60.0,
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
                      Text(
                        "Tunahan Yılmaz",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                     decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Colors.blue,
                          border: Border.all(width: 2.0, color: Colors.white)),
                      height: 40.0,
                      width: 150.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Icon(
                            Icons.share,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          Text("Paylaş",
                              style: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
