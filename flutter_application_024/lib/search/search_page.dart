import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_024/item_card/card_screan.dart';
import 'package:flutter_application_024/item_card/page_detail.dart';

import '../item_card/read_json.dart';

class SearchPagState extends StatefulWidget {
  const SearchPagState({super.key, required this.tileSearch});
  final String tileSearch;
  @override
  State<SearchPagState> createState() => __SearchPagStateState();
}

class __SearchPagStateState extends State<SearchPagState> {
  // ignore: unused_field
  static List<Menu> listMenu = List.from(items);

  void search(String value) {
    setState(() {
      listMenu = items
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: container(context),
              titleSpacing: 00.0,
              toolbarHeight: 70.0,
              pinned: false,
              snap: true,
              floating: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              elevation: 0.00,
              backgroundColor: const Color.fromARGB(255, 94, 251, 246),
              automaticallyImplyLeading: false,
            )
          ];
        },
        body: ListView(
          children: [
            Expanded(
              child: gridView(),
            ),
          ],
        ),
      ),
    );
  }

  ListView listView() {
    return ListView.builder(
      itemCount: listMenu.length,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(15),
      itemBuilder: (context, index) {
        Menu menu = listMenu[index];
        return GestureDetector(
          child: containerItem(menu),
        );
      },
    );
  }

  GridView gridView() {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: listMenu.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: 266,
      ),
      itemBuilder: (context, index) {
        Menu menu = listMenu[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(menu: menu, tille: "food"),
                ));
          },
          child: containerItem(menu),
        );
      },
    );
  }

  Container containerItem(Menu menu) {
    return Container(
      // height: 200,
      // width: 20,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 2, 249, 241),
            Color.fromARGB(255, 233, 236, 238),
          ],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      menu.image,
                      height: 100,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  menu.name,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      "coking time",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "4",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "${menu.price}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Colors.black),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 137, top: 20),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          Positioned(
            left: 130,
            top: 229,
            child: Container(
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(216, 6, 153, 244),
                    Color.fromARGB(240, 255, 255, 255),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                shadowColor: Colors.black,
                child: InkWell(
                  child: const Icon(Icons.add),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CardSrean(
                        tillePage: "List",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container container(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(right: 5, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: (value) => search(value),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 244, 245, 245),
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Material(
                color: const Color.fromARGB(255, 94, 251, 246),
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardSrean(
                                    tillePage: widget.tileSearch,
                                  ))),
                      child: const Icon(
                        Icons.align_horizontal_left_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//  const Icon(
//                   Icons.align_horizontal_left_rounded,
//                   color: Colors.white,
//                 ),

//  AppBar(
//         title: container(context),
//         titleSpacing: 00.0,
//         centerTitle: true,
//         toolbarHeight: 50.0,
//         toolbarOpacity: 0.8,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(30),
//             bottomRight: Radius.circular(30),
//           ),
//         ),
//         elevation: 0.00,
//         backgroundColor: const Color.fromARGB(255, 94, 251, 246),
//         automaticallyImplyLeading: false,
//       ),



// ListView(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           //container(context),
//           const SizedBox(
//             height: 20,
//           ),
//           Expanded(
//             child: gridView(),
//           ),
//         ],
//       ),