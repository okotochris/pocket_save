import 'package:flutter/material.dart';
// import 'package:awesome_notifications/awesome_notifications.dart';
import 'screens/welcome4.dart';
import 'screens/welcome2.dart';
import 'screens/welcome3.dart';
import 'screens/welcome.dart';
import'screens/splash.dart';
import 'screens/login.dart';
import 'screens/home.dart';
import 'screens/signup.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/" : (context)=>const Splash(),
        "/home": (context) => const Home(),
        "/welcome": (context)=> const Welcome(),
        "/login": (context)=> const Login(),
        "/welcome2": (context)=> const Welcome2(),
         "/welcome3": (context)=> const Welcome3(),
         "/welcome4": (context)=>const Welcome4(),
         "/signup": (context)=> const Signup()
      },
    );
  }
}