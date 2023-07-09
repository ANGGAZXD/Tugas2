import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyProfil extends StatefulWidget {
  const MyProfil({super.key});

  @override
  State<MyProfil> createState() => _MyProfilState();
}

class _MyProfilState extends State<MyProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.brown,
                      size: 80,
                        
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.brown,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Ussername",
                        helperStyle: TextStyle(color: Colors.white),
                        labelText: "Ussername",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.brown,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "First Name",
                        helperStyle: TextStyle(color: Colors.white),
                        labelText: "First Name",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.brown,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Last Name",
                        helperStyle: TextStyle(color: Colors.white),
                        labelText: "Last Name",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
