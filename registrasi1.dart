import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';

class Registrasi1 extends StatefulWidget {
  const Registrasi1({Key? key}) : super(key: key);

  @override
  State<Registrasi1> createState() => _Registrasi1State();
}

class _Registrasi1State extends State<Registrasi1> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('CoffeShope'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0),
            ),
            Text(
              'Get started free',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            Text(
              "Register your Account!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "First Name",
                      hintStyle: TextStyle(color: Colors.black12),
                      labelText: "First Name",
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "Last Name",
                      hintStyle: TextStyle(color: Colors.black12),
                      labelText: "Last Name",
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "User Name",
                      hintStyle: TextStyle(color: Colors.black12),
                      labelText: "User Name",
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Colors.black12),
                      labelText: "Email Address",
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: TextFormField(
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black12),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 13, top: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromRGBO(217, 217, 217, 1)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 15),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>MyLogin()),
                  );
                },
                child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Already have an Account? Click here to Sign In",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
