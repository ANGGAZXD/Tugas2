import 'package:flutter/material.dart';
import 'package:uas/uas/login.dart';
// import 'package:provider/provider.dart';

class Registrasi1 extends StatefulWidget {
  const Registrasi1({Key? key}) : super(key: key);

  @override
  State<Registrasi1> createState() => _Registrasi1State();
}

class _Registrasi1State extends State<Registrasi1> {
  // var prov = Provider.of<Provider>(context);
  void intstate() {
    isFristNmaeEmpty = false;
    isLastNameEmpty = false;
    isUserNameEmpty = false;
    isEmailAddressEmpty = false;
    isPasswordEmpty = false;

    super.initState();
  }

  bool? isFristNmaeEmpty;
  bool? isLastNameEmpty;
  bool? isUserNameEmpty;
  bool? isEmailAddressEmpty;
  bool? isPasswordEmpty;

  TextEditingController fristNameController = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();

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
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              const Text(
                'Get started free',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              const Text(
                "Register your Account!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      controller: fristNameController,
                      decoration: InputDecoration(
                        errorText: isFristNmaeEmpty == true
                            ? 'Frist name harus di isi'
                            : null,
                        filled: true,
                        fillColor: Colors.white,
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "First Name",
                        hintStyle: const TextStyle(color: Colors.black12),
                        labelText: "First Name",
                        labelStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      controller: lastName,
                      decoration: InputDecoration(
                        errorText: isLastNameEmpty == true
                            ? 'Last name harus di isi'
                            : null,
                        filled: true,
                        fillColor: Colors.white,
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Last Name",
                        hintStyle: const TextStyle(color: Colors.black12),
                        labelText: "Last Name",
                        labelStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                        errorText: isUserNameEmpty == true
                            ? 'User name harus di isi'
                            : null,
                        filled: true,
                        fillColor: Colors.white,
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "User Name",
                        hintStyle: const TextStyle(color: Colors.black12),
                        labelText: "User Name",
                        labelStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      controller: emailAddress,
                      decoration: InputDecoration(
                        errorText: isEmailAddressEmpty == true
                            ? 'Email address harus di isi'
                            : null,
                        filled: true,
                        fillColor: Colors.white,
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Email Address",
                        hintStyle: const TextStyle(color: Colors.black12),
                        labelText: "Email Address",
                        labelStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      controller: password,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        errorText: isPasswordEmpty == true
                            ? 'Password harus di isi'
                            : null,
                        filled: true,
                        fillColor: Colors.white,
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.black12),
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.black),
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
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () {
                      if (fristNameController.text.isEmpty) {
                        setState(() {
                          isFristNmaeEmpty = true;
                        });
                      }
                      if (lastName.text.isEmpty) {
                        setState(() {
                          isLastNameEmpty = true;
                        });
                      }
                      if (username.text.isEmpty) {
                        setState(() {
                          isUserNameEmpty = true;
                        });
                      }
                      if (emailAddress.text.isEmpty) {
                        setState(() {
                          isEmailAddressEmpty = true;
                        });
                      }
                      if (password.text.isEmpty) {
                        setState(() {
                          isPasswordEmpty = true;
                        });
                      } else {
                        setState(() {
                          isFristNmaeEmpty = false;
                          isLastNameEmpty = false;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor:
                            const Color.fromRGBO(217, 217, 217, 1)),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // if (abcController.text.isEmpty) {
                  //   setState(() {
                  //     isAbcEmpty = true;
                  //   });
                  // }
                  // if (lastName.text.isEmpty) {
                  //   setState(() {
                  //     isLastNameEmpty = true;
                  //   });
                  // }
                  // if (username.text.isEmpty) {
                  //   setState(() {
                  //     isUserNameEmpty = true;
                  //   });
                  // }
                  // if (emailAddress.text.isEmpty) {
                  //   setState(() {
                  //     isEmailAddressEmpty = true;
                  //   });
                  // } else {
                  //   setState(() {
                  //     isAbcEmpty = false;
                  //     isLastNameEmpty = false;
                  //   });
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => const Login()),
                  //   );
                  // }
                },
                child: const Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Already have an Account? Click here to Sign In",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
