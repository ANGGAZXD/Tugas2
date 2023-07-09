import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:flutter/cupertino.dart';

class DetailPage1 extends StatefulWidget {
  const DetailPage1({super.key});

  @override
  State<DetailPage1> createState() => _DetailPage1State();
}

class _DetailPage1State extends State<DetailPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CoffeShop"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Hot Cappucino",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("With Topping", style: TextStyle(fontSize: 20)),
          ),
          Row(
            children: [
              Column(
                children: [
                  SmoothStarRating(
                    allowHalfRating: true,
                    starCount: 5,
                  ),
                ],
              ),
              Column(
                children: [Text("[4.5]")],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [Text("S")],
              ),
              Column(
                children: [Text("2.00")],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 10),
            child: Text("Sized", style: TextStyle(fontSize: 20)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("250mL", style: TextStyle(fontSize: 50)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text("Hot Cappucino", style: TextStyle(fontSize: 10)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Text(
                "Cappucino Panas diseduhi dengan Topping \n Americano.Secangkir kopi nikmat yang atasnya\ndipenuhi buih (Milk Foam) yang bagian dasarya \n dipenuhi espresso mixed susu"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.minus,
                      color: Colors.black,
                      size: 15,
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      CupertinoIcons.plus,
                      color: Colors.black,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  label: Text("Add To Cart",
                      style: TextStyle(color: Colors.black)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.brown),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)))),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
