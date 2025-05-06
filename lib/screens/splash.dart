import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 128, 128, 1),
      body:GestureDetector(
        onTap:() => Navigator.pushNamed(context, '/welcome'),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.asset('assets/images/savepocket.png', height: 100, width:100),
              SizedBox(height:10),
              const Text('POCKETSAVE', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color:Colors.white))
            ],
          )
        ),
      )
    );
}}