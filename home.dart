import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/makanan.dart';
import 'package:flutter_application_1/minuman.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;

  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Makanan(),
    Minuman(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apa atjah"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.brown.shade400,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
              backgroundColor: Colors.brown.shade400,
              color: Colors.black,
              activeColor: Colors.black,
              tabBackgroundColor: Colors.white,
              padding: EdgeInsets.all(16),
              gap: 8,
              onTabChange: _navigationBar,
              tabs: const [
                GButton(icon: Icons.home, text: "Home"),
                GButton(icon: Icons.home, text: "Home"),
                GButton(icon: Icons.home, text: "Home"),
                GButton(icon: Icons.home, text: "Home"),
              ]),
        ),
      ),
    );
  }
}

// showDialog(
//                             context: context,
//                             builder: (context) => Container(
//                               child: Column(
//                                 children: [
//                                   Image.network(
//                                     "https://images.unsplash.com/photo-1624378439575-d8705ad7ae80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=397&q=80",
//                                     height: 300,
//                                   ),
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.all(0.0),
//                                         child: Text("modela"),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Text("rating"),
//                                       ),
//                                     ],
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Text(
//                                       "developer",
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Text("Price"),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );