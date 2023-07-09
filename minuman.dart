import 'package:flutter/material.dart';
import 'package:flutter_application_1/detailpage1.dart';

class Minuman extends StatefulWidget {
  const Minuman({super.key});

  @override
  State<Minuman> createState() => _MinumanState();
}

class _MinumanState extends State<Minuman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 240,
          child: InkWell(
              child: Image.network(
            "https://images.unsplash.com/photo-1624378439575-d8705ad7ae80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=397&q=80",
            fit: BoxFit.cover,
          )),
        ),
        Container(
            child: Column(children: [
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage1()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: ListTile(
                            title: Text("data"),
                            subtitle: Text('TItid'),
                          ),
                          shadowColor: Colors.black,
                          elevation: 8),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                child: Card(
                    child: ListTile(
                      title: Text("data"),
                      subtitle: Text('TItid'),
                    ),
                    shadowColor: Colors.black,
                    elevation: 8),
              ),
              Container(
                height: 200,
                width: 200,
                child: Card(
                    child: ListTile(
                      title: Text("data"),
                      subtitle: Text('TItid'),
                    ),
                    shadowColor: Colors.black,
                    elevation: 8),
              ),
            ],
          )
        ]))
      ],
    ));
  }
}
