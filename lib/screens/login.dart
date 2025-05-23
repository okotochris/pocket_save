import "package:flutter/material.dart";
import 'dart:async';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String respond = '';
  bool showPassword = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      print('hello world');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 128, 128, 1),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/logo.png'))),
                  ),
                  const SizedBox(height: 20),
                  const Text('What’s your number?',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
                  const SizedBox(height: 10),
                  const Text("Enter the phone number you used to sign up",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                  const Text("on PocketSave",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                  const SizedBox(
                    height: 26,
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Email')),
                            TextField(
                              controller: email,
                              decoration: const InputDecoration(
                                hintText: "email",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 128, 128, 1),
                                )),
                                filled: true,
                                fillColor: Color.fromRGBO(217, 217, 217, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 26),
                      Align(
                        child: Column(
                          children: [
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Password')),
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
                                  child: const Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: 'Password',
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 128, 128, 1),
                                )),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(217, 217, 217, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Forget your password?"),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: const Text("Click here",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 128, 128, 1))))
                        ],
                      ),
                      Text(respond, style: const TextStyle(color: Colors.red)),
                      const SizedBox(height: 220),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/home'),
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
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
