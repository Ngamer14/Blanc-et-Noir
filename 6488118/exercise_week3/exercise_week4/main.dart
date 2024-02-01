import 'package:flutter/material.dart';

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
      children: <Widget>[
        ProductBox(
          name: "iPhone",
          description: "iPhone is the stylist phone ever",
          price: 1000,
          image: "iphone.png"),
        ProductBox(
          name: "Pixel",
          description: "Pixel is the most featureful phone ever",
          price: 800,
          image: "pixel.png"),
        ProductBox(
          name: "Laptop",
          description: "Laptop is most productive development tool",
          price: 2000,
          image: "laptop.png"),
        ProductBox(
          name: "Tablet",
          description: "Tablet is the most useful device ever for meeting",
          price: 1500,
          image: "tablet.png"),
        ProductBox(
          name: "Pendrive",
          description: "Pendrive is useful storage medium",
          price: 100,
          image: "pendrive.png"),
        ProductBox(
          name: "Floppy Drive",
          description: "Floppy drive is useful rescue storage medium",
          price: 20,
          image: "floppy.png"),
        ],
      ));

  }
}
class ProductBox extends StatelessWidget {
  
  final String name;
  final String description;
  final int price;
  final String image;
  const ProductBox({Key? key,  required this.name,required this.description,required this.price, required this.image}): super(key : key);
    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Image.asset("assets/appImage/" + image),
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

