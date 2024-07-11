import 'package:flutter/material.dart';
import 'package:flutter_application_024/item_card/itempage.dart';
import 'package:flutter_application_024/item_card/read_json.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.menu, required this.tille});
  final Menu menu;
  final String tille;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int order = 1;
  double star = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          appBar(),
          // image
          imagesTitle(),
          Container(
            color: const Color.fromARGB(255, 2, 249, 241),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.menu.name,
                            maxLines: 1,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 34,
                            ),
                          ),
                          // price
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            widget.menu.categori,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color.fromARGB(255, 10, 10, 10),
                            ),
                          )
                        ],
                      ),
                    ),
                    Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {});
                              if (order > 1) {
                                order--;
                              }
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "$order",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 254, 255, 255),
                                fontSize: 25),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {});
                              order++;
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 27,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {});
                        star += 0.1;
                      },
                      icon: const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 238, 255, 5),
                        size: 40.0,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${star.toInt()}",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 40.0),
                    ),
                    const Spacer(),
                    const SizedBox(
                      width: 4,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.currency_bitcoin,
                      color: Color.fromARGB(255, 238, 255, 5),
                      size: 30.0,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "${widget.menu.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "DESCRIPTION",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.menu.description,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "LIST OTHER MENU",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                    fontSize: 20,
                  ),
                ),
                ListItem(
                  coun: 2,
                  padding: 6,
                  tille: widget.tille,
                ),
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 65,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 21),
                      child: const Text(
                        "add cards",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox imagesTitle() {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 2, 249, 241),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 3, 184, 255),
                      blurRadius: 10,
                      offset: Offset(0, 10)),
                ],
                borderRadius: BorderRadius.circular(250),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(250),
                child: Image.asset(
                  widget.menu.image,
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
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
            "Detail ${widget.tille}",
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
