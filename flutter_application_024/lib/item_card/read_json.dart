// ignore_for_file: equal_keys_in_map

import 'dart:core';

// ReadJson readFromJson([String text = 'assets/image/Api.json']) =>
//     ReadJson.fromJson(json.decode(text));

// class ReadJson {
//   List<Menu> menu;

//   ReadJson({required this.menu});

//   factory ReadJson.fromJson(Map<String, dynamic> json) => ReadJson(
//       menu: List<Menu>.from(json["menu"].map((x) => Menu.fromJson(x))));

//   Map<String, dynamic> tojson() =>
//       {"menu": List<Menu>.from(menu.map((e) => e.tojson()))};

// static ReadJson? _instance;
// static bool _isfeching = false;
// static Completer<ReadJson>? _completer;

// static ReadJson getInstance()  {
//   if (_instance != null) {
//     return _instance!;

//   } else {
//     _isfeching = true;
//     _completer = Completer<ReadJson>();
//     try {
//       String data = File("assets/dataset/Api.json").readAsStringSync();
//       _instance = readFromJson(data);
//       _completer!.complete(_instance);
//     } catch (e) {
//       _completer!.completeError(e);
//     } finally {
//       _isfeching = false;
//     }

//   }

//   // }
// }

class Menu {
  Menu(
      {required this.categori,
      required this.name,
      required this.price,
      required this.image,
      required this.description});
  String categori;
  String name;
  int price;
  String image;
  String description;
}

// List<ReadJson> filterFromCategory(List<ReadJson> item, String category) {
//   return item.where((items) => items.category == category).toList();
// }

// void read({required String paht, required String categori}) {
//   final String filePath = paht;

//   String json = File(filePath).readAsStringSync();

//   final Map<String, dynamic> data = jsonDecode(json);
//   List<ReadJson> items =
//       (data["menu"] as List).map((e) => ReadJson.fromJson(e)).toList();

//   // ignore: unused_local_variable
//   filterFromCategory(items, categori);
// }

// void readAll({required String paht}) {
//   final String filePath = paht;

//   String json = File(filePath).readAsStringSync();

//   final Map<String, dynamic> data = jsonDecode(json);
//   (data["menu"] as List).map((e) => ReadJson.fromJson(e)).toList();
// }

// Future<Map<String, dynamic>> getJson(String file) async {
//   String jsonRead = await rootBundle.loadString(file);
//   return jsonDecode(jsonRead);
// }

const imagesHallo = "assets/images/hallo.jpg";
const imageFoto = "assets/images/foto.jpeg";

List<Menu> items = [
  Menu(
    categori: "food",
    name: "Meat Lover",
    description:
        "Irisan sosis sapi, daging sapi cincang, burger sapi, sosis ayam.",
    price: 49500,
    image: imageFoto,
  ),
  Menu(
    categori: "drinks",
    name: "Green Tea Shake",
    description: "",
    price: 24000,
    image: imagesHallo,
  ),
  Menu(
    categori: "food",
    name: "Super Supreme",
    description:
        "Daging ayam dan sapi asap, daging sapi cincang, burger sapi, jamur, paprika merah dan paprika hijau.",
    price: 49500,
    image: imageFoto,
  ),
  Menu(
    categori: "food",
    name: "Tuna Melt",
    description: "Irisan daging ikan tuna, butiran jagung, saus mayonnaise.",
    price: 49500,
    image: imagesHallo,
  ),
  Menu(
    categori: "food",
    name: "American Favourite",
    description: "Pepperoni sapi, daging sapi cincang, jamur.",
    price: 49500,
    image: imageFoto,
  ),
  Menu(
    name: 'Beef Spaghetti',
    image: imagesHallo,
    description:
        "Dipanggang, daging sapi cincang. krim putih lembut di tiap lapisan.",
    price: 48000,
    categori: "food",
  ),
  Menu(
    name: " Creamy Beef Fettuccine",
    image: imageFoto,
    description: "Daging sapi asap dan jamur, ditumis dengan saus krim lembut.",
    price: 43000,
    categori: "food",
  ),
  Menu(
    name: "Meatballs Beef Mushroom",
    image: imagesHallo,
    description: "Bola daging sapi dengan saus daging sapi cincang dan jamur.",
    price: 40000,
    categori: "food",
  ),
  Menu(
    categori: 'food',
    name: "Black Papper Chicken",
    price: 40000,
    image: imageFoto,
    description: 'Ayam dengan saus lada hitam.',
  ),
  Menu(
    categori: 'food',
    name: 'Oriental Chikcken',
    price: 40000,
    image: imagesHallo,
    description: 'Daging ayam berpadu dengan saus oriental',
  ),
  Menu(
    categori: "drinks",
    name: "Choco Mint",
    price: 24000,
    image: imageFoto,
    description: '',
  ),
  Menu(
    categori: 'drinks',
    name: 'Toffre Cofee',
    price: 24000,
    image: imagesHallo,
    description: '',
  ),
  Menu(
    categori: 'drinks',
    name: 'Strawberry Milkshake',
    description: '',
    price: 24000,
    image: imageFoto,
  ),
  Menu(
    categori: 'drinks',
    name: 'Chocolate Milshake',
    description: '',
    price: 20000,
    image: imagesHallo,
  )
];



//  "kategori": "food",
//             "nama": "Meat Lover",
//             "deskripsi": "Irisan sosis sapi, daging sapi cincang, burger sapi, sosis ayam.",
//             "harga": 49500,
//             "gambar": "/foto.jpeg"
