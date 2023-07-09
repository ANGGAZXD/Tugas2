import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyPembayaran extends StatefulWidget {
  const MyPembayaran({super.key});

  @override
  State<MyPembayaran> createState() => _MyPembayaranState();
}

class _MyPembayaranState extends State<MyPembayaran> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown, // Ubah warna navbar di sini
          title: Center(
            child: Text(
              "Pilih Opsi Pembayaran",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Menggeser ke kiri
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10), // Spasi sebelum teks
                  Text(
                    "Metode yang direkomendasi",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              height: 50,
              color: Colors.brown.shade300,
            ),
            SizedBox(height: 0),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Text(
                  "Cash",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            height: 65,
            color: Colors.brown,
          )
          ],
        ),
      ),
    );
  }
}
