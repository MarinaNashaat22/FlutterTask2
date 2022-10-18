// ignore_for_file: file_names

class Data {
  List<Categori> CategoryList = [
    Categori(
        id: 1,
        name: "sandwiches",
        desciption: "This is Sandwiches description",
        imgUrl: 'assets/images/sand.jpg'),
    Categori(
        id: 2,
        name: "Pizza",
        desciption: "This is Pizza description",
        imgUrl: 'assets/images/chikpizza.jpg'),
    // Categori(id: 3, name: "Shawrma", desciption: "This is Shawrma description"),
    Categori(
        id: 4,
        name: "SeaFood",
        desciption: "This is SeaFood description",
        imgUrl: 'assets/images/seafood.jpg'),
  ];
  List<Product> myProductList = [
    Product(
        id: 1,
        categoriID: 1,
        name: "Beaf Sandwitch",
        desciption: "This is Meat Pikata description",
        imgUrl: "assets/images/befsand.jpg"),
    Product(
        id: 2,
        categoriID: 1,
        name: "Chiken Sandwitch",
        desciption: "This is Chiken Pikata description",
        imgUrl: "assets/images/chikensand.jpg"),
    Product(
        id: 3,
        categoriID: 2,
        name: "Cheese Pizza",
        desciption: "This is Mashrom Pizza description",
        imgUrl: "assets/images/cheese.jpg"),
    Product(
        id: 4,
        categoriID: 2,
        name: "Chiken Pizza",
        desciption: "This is Chiken Pizza description",
        imgUrl: "assets/images/chikpizza.jpg"),
    Product(
        id: 5,
        categoriID: 2,
        name: "Mashrom Pizza",
        desciption: "This is Bief Pizza description",
        imgUrl: "assets/images/mashpizza.jpg"),
    Product(
        id: 6,
        categoriID: 3,
        name: "meat Shawrma",
        desciption: "This is Shawrma description",
        imgUrl: "assets/images/"),
    Product(
        id: 7,
        categoriID: 3,
        name: "Chiken Shawrma",
        desciption: "This is Shawrma description",
        imgUrl: "assets/images/"),
    Product(
        id: 8,
        categoriID: 4,
        name: "SeaFood",
        desciption: "This is SeaFood description",
        imgUrl: "assets/images/"),
  ];
  List<Product> filterList(int id) {
    // ignore: unnecessary_this
    return this
        .myProductList
        .where((element) => element.categoriID == id)
        .toList();
  }

  // int index = 0;
  // Categori getData() {
  //   return CategoryList[index];
  // }
}

class Categori {
  int id;
  String name;
  String desciption;
  String imgUrl;
  Categori({
    required this.id,
    required this.name,
    required this.desciption,
    required this.imgUrl,
  });
}

class Product {
  int id;
  int categoriID;
  String name;
  String desciption;
  String imgUrl;

  Product({
    required this.id,
    required this.categoriID,
    required this.name,
    required this.desciption,
    required this.imgUrl,
  });
}
