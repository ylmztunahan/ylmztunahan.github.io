import 'package:flutter/material.dart';
import 'package:vizeodevi/addpost.dart';
import 'package:vizeodevi/commentpage.dart';
import 'package:vizeodevi/homepage.dart';
import 'package:vizeodevi/loginpage.dart';
import 'package:vizeodevi/movieinfopage.dart';
import 'package:vizeodevi/newaccountpage.dart';
import 'package:vizeodevi/notificationpage.dart';
import 'package:vizeodevi/profileeditingpage.dart';
import 'package:vizeodevi/profilepage.dart';
import 'package:vizeodevi/searchpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MovieTEo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddPostPage(),
    );
  }
}

