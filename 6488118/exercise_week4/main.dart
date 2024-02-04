import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Listing by Jiruch Charoenchaiprakij 6488118")),
      body: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
      children: const <Widget>[
        ProductBox(
          name: "iPhone",
          description: "iPhone is the stylist phone ever",
          price: 1000,
          assetImage: "iphone.png",
          networkImage: ""),
        ProductBox(
          name: "Pixel",
          description: "Pixel is the most featureful phone ever",
          price: 800,
          assetImage: "pixel.png",
          networkImage: ""),
        ProductBox(
          name: "Laptop",
          description: "Laptop is most productive development tool",
          price: 2000,
          assetImage: "laptop.png",
          networkImage: ""),
        ProductBox(
          name: "Tablet",
          description: "Tablet is the most useful device ever for meeting",
          price: 1500,
          assetImage: "",
          networkImage: "https://freepngimg.com/thumb/tablet/6-2-tablet-png-images.png"),
        ProductBox(
          name: "Pendrive",
          description: "Pendrive is useful storage medium",
          price: 100,
          assetImage: "",
          networkImage: "https://w7.pngwing.com/pngs/383/425/png-transparent-sandisk-pen-drive-thumbnail.png"),
        ProductBox(
          name: "Floppy Drive",
          description: "Floppy drive is useful rescue storage medium",
          price: 20,
          assetImage: "",
          networkImage: "https://w7.pngwing.com/pngs/508/399/png-transparent-floppy-disk-computer-icons-disk-storage-others-miscellaneous-electronic-device-technology-thumbnail.png"),
        ],
      ));

  }
}
class ProductBox extends StatelessWidget {
  
  final String name;
  final String description;
  final int price;
  final String assetImage;
  final String networkImage;
  const ProductBox({Key? key,  required this.name,required this.description,required this.price, required this.assetImage, required this.networkImage, }): super(key : key);
    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            if (assetImage.isNotEmpty)
              Image.asset("assets/appImage/" + assetImage),
            if (networkImage.isNotEmpty)
              Image.network(networkImage),
          Expanded(
          child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Text(this.name,
          style: TextStyle(fontWeight:
          FontWeight.bold)),
          Text(this.description),
          Text("Price: " + this.price.toString()),
          ],
        )))
    ])));
  }
}

