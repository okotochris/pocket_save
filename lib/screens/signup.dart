import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();
  TextEditingController referer = TextEditingController();
  String respond = '';
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text('Let’s get started',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
                  const SizedBox(height: 10),
                  const Text("Register to start saving and investing with",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                  const Text("PocketSave today!",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                  const SizedBox(
                    height: 26,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('First & Last Name'),
                      TextField(
                        controller: userName,
                        decoration: const InputDecoration(
                          hintText: 'e.g John Doe',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          )),
                          filled: true,
                          fillColor: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ),
                      const SizedBox(height: 26),
                      const Text('Email address'),
                      TextField(
                        controller: email,
                        decoration: const InputDecoration(
                          hintText: 'e.g john@gmail.com',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          )),
                          filled: true,
                          fillColor: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ),
                      const SizedBox(height: 26),
                      const Text('Phone number'),
                      TextField(
                        obscureText: showPassword,
                        controller: phoneNo,
                        decoration: const InputDecoration(
                          hintText: 'e.g 08123456789',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          )),
                          filled: true,
                          fillColor: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ),
                      const SizedBox(height: 26),
                      const Text('Create Password'),
                      TextField(
                        obscureText: showPassword,
                        controller: password,
                        decoration: InputDecoration(
                          suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (showPassword) {
                                    showPassword = false;
                                  } else {
                                    showPassword = true;
                                  }
                                });
                              },
                              child: const Icon(Icons.remove_red_eye)),
                          hintText: 'Password',
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          )),
                          filled: true,
                          fillColor: const Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ),
                      const SizedBox(height: 26),
                      const Text('Re-type the password'),
                      TextField(
                        controller: repassword,
                        obscureText: showPassword,
                        decoration: InputDecoration(
                          suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (showPassword) {
                                    showPassword = false;
                                  } else {
                                    showPassword = true;
                                  }
                                });
                              },
                              child: const Icon(Icons.remove_red_eye)),
                          hintText: 'password',
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          )),
                          filled: true,
                          fillColor: const Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ),
                      const SizedBox(height: 26),
                      const Text('Enter a referral code (optional)'),
                      TextField(
                        controller: referer,
                        decoration: const InputDecoration(
                          hintText: 'e.g 08123456789',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          )),
                          filled: true,
                          fillColor: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ),
                      Text(respond, style: const TextStyle(color: Colors.red)),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/home'),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 46,
                            width: 291,
                            alignment: Alignment.center,
                            color: const Color.fromRGBO(0, 128, 128, 1),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
