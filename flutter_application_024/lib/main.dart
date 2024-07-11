import 'package:flutter/material.dart';
import './home_page/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 17, 23, 208)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
