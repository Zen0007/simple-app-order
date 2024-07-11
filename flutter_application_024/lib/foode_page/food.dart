import 'package:flutter/material.dart';
import 'package:flutter_application_024/search/search_page.dart';

class Food extends StatefulWidget {
  const Food({super.key});
  @override
  State<Food> createState() => _Food();
}

class _Food extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchPagState(
        tileSearch: "FOOD",
      ),
    );
  }
}
