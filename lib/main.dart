import 'package:flutter/material.dart';
import 'package:flutter_flutter_news/views/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News',
      home: Home(),
    );
  }
}
