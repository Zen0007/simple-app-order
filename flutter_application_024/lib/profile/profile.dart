import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "PROFILE",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.0,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          elevation: 0.00,
          backgroundColor: const Color.fromARGB(255, 94, 251, 246),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text('profile'),
            )
          ],
        ),
      ),
    );
  }

  Padding appBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Material(
            color: const Color.fromARGB(255, 0, 140, 255).withOpacity(0.21),
            borderRadius: BorderRadius.circular(20),
            child: const BackButton(
              color: Colors.blue,
            ),
          ),
          const Spacer(),
          const Text(
            "Profile",
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
