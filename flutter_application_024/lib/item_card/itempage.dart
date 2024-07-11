import 'package:flutter/material.dart';
import 'package:flutter_application_024/item_card/page_detail.dart';
import 'package:flutter_application_024/item_card/card_screan.dart';
import 'package:flutter_application_024/item_card/read_json.dart';

class ListItem extends StatefulWidget {
  final int coun;
  final double padding;
  final String tille;

  const ListItem(
      {super.key,
      required this.coun,
      required this.padding,
      required this.tille});

  @override
  // ignore: no_logic_in_create_state
  State<ListItem> createState() => _ListItemState(padding: padding, coun: coun);
}

class _ListItemState extends State<ListItem> {
  double padding;
  int coun;

  _ListItemState({
    required this.coun,
    required this.padding,
  });

  List<Menu> listItem = items;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: listItem.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: coun,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 265),
      itemBuilder: (context, index) {
        Menu menu = listItem[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(
                          menu: menu,
                          tille: widget.tille,
                        )));
          },
          child: Container(
            height: 270,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 2, 249, 241),
              borderRadius: BorderRadius.circular(20),
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
                              color: Color.fromARGB(139, 3, 108, 255),
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
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
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
                Padding(
                  padding: EdgeInsets.only(left: padding, top: 20),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Material(
                    color: const Color.fromARGB(255, 94, 251, 246),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(50)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 4, 165, 246),
                        ),
                        onPressed: () => CardSrean(
                              tillePage: widget.tille,
                            ),
                        child: const Icon(Icons.add)),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
