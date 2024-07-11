import 'package:flutter/material.dart';
import 'package:flutter_application_024/search/search_page.dart';

class Drinks extends StatefulWidget {
  const Drinks({super.key});
  @override
  State<Drinks> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Drinks> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchPagState(
        tileSearch: "drinks",
      ),
    );
  }
}
