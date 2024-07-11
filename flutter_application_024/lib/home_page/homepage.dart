import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_024/drinks/drinks.dart';
import 'package:flutter_application_024/foode_page/food.dart';
import 'package:flutter_application_024/home_page/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pagecontroler = PageController();

  @override
  void dispose() {
    super.dispose();
    _pagecontroler.dispose();
  }

  final colors = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pagecontroler,
        children: const <Widget>[
          Home(),
          Food(),
          Drinks(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInBack,
        height: 60,
        backgroundColor: const Color.fromARGB(121, 253, 252, 255),
        buttonBackgroundColor: Color.fromARGB(146, 0, 153, 255),
        color: const Color.fromARGB(160, 0, 255, 251),
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30,
            color: colors,
          ),
          Icon(
            Icons.food_bank_outlined,
            size: 30,
            color: colors,
          ),
          Icon(
            Icons.coffee_outlined,
            size: 30,
            color: colors,
          ),
        ],
        onTap: (value) {
          setState(
            () {
              _pagecontroler.animateToPage(
                value,
                duration: const Duration(microseconds: 200),
                curve: Curves.bounceOut,
              );
            },
          );
        },
      ),
    );
  }
}
//  body: _disply[_index],
//  items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.food_bank_outlined),
//             label: "Food",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.coffee_outlined),
//             label: "Drinks",
//           ),
//         ],