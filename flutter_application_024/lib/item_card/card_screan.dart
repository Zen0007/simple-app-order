import 'package:flutter_application_024/item_card/read_json.dart';

import 'package:flutter/material.dart';

class CardSrean extends StatefulWidget {
  const CardSrean({super.key, required this.tillePage});
  final String tillePage;
  @override
  State<CardSrean> createState() => _CardProviderState();
}

class _CardProviderState extends State<CardSrean> {
  List<Menu> list = items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          appBar()
        ],
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
          Text(
            "Detail ${widget.tillePage}",
            style: const TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Material(
            color: Colors.blue.withOpacity(0.6),
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
