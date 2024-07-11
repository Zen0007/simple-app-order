import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_024/foode_page/food.dart';
import 'package:flutter_application_024/item_card/page_detail.dart';
import 'package:flutter_application_024/item_card/read_json.dart';
import 'package:flutter_application_024/profile/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  List<Menu> listItem = items;

  final gradienText = const LinearGradient(
    colors: [
      Colors.blue,
      Color.fromARGB(255, 94, 251, 246),
      Color.fromARGB(255, 51, 48, 237),
    ],
  );
  final textStyle = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.transparent,
    shadows: [
      BoxShadow(
        color: Colors.white,
        offset: Offset(1, 1),
        spreadRadius: 5,
      ),
    ],
  );
  double star = 0.00;
  late Menu menu2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        image: AssetImage("assets/images/hallo.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 100.0,
                          width: 200.0,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "ORDER NOW",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Cigugur Tengah Kec.Cimahi Tengah, Kota Cimahi, Jawa Barat 40522",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(216, 0, 0, 0),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Positioned(
                      bottom: 2,
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 570.0,
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: listItem.length,
                                    itemBuilder: (context, index) {
                                      Menu menu = listItem[index];
                                      menu2 = menu;
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => DetailPage(
                                                menu: menu,
                                                tille: "FOOD AND DRINKS",
                                              ),
                                            ),
                                          );
                                        },
                                        // ignore: avoid_unnecessary_containers
                                        child: row(menu),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 280,
                              child: Stack(
                                children: [
                                  columsBottom(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  top: 30.0,
                  left: 30.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ),
                      );
                    },
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/download.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 210,
                  left: 20,
                  child: Container(
                    width: 160,
                    height: 35,
                    child: const Row(
                      children: [
                        Text(
                          'List Products',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 29,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 210,
                  left: 269,
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Food(),
                        )),
                    child: ShaderMask(
                      shaderCallback: (bounds) {
                        return gradienText.createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                        );
                      },
                      child: Text(
                        'See All > ',
                        style: textStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column columsBottom() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: const Alignment(-0.5, -0.4),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/download.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, -0.4),
              child: Container(
                height: 150.0,
                width: 200.0,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "ORDER NOW",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Cigugur Tengah Kec.Cimahi Tengah, Kota Cimahi, Jawa Barat 40522",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(157, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(104, 0, 140, 255),
              ),
              child: const Center(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Color.fromARGB(255, 0, 140, 255),
                      ),
                      Text(
                        "instagram",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(157, 0, 17, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(104, 0, 140, 255),
                ),
                child: const InkWell(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.facebook_rounded,
                          color: Color.fromARGB(255, 0, 140, 255),
                        ),
                        Text(
                          "facebook",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(157, 0, 17, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }

  Row row(Menu menu) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 350,
            height: 500.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 2, 249, 241),
            ),
            padding: const EdgeInsets.fromLTRB(2, 15, 2, 0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 3, 184, 255),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      menu.image,
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    menu.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.currency_bitcoin_sharp,
                      color: Color.fromARGB(255, 255, 243, 5),
                      size: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${menu.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromARGB(255, 7, 7, 7),
                      ),
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    Text(
                      '${star.toInt()}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {});
                        star += 0.1;
                      },
                      icon: const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 238, 255, 5),
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  menu.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
