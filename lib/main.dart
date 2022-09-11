import 'package:flutter/material.dart';
import 'package:whatsapp/contactPage.dart';
import 'package:whatsapp/homePage.dart';
import 'package:whatsapp/chatPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
