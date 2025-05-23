import 'package:flutter/material.dart';
import 'package:pocket_save/screens/profile.dart';
import 'package:pocket_save/screens/savings.dart';
// import 'package:awesome_notifications/awesome_notifications.dart';
import 'screens/welcome4.dart';
import 'screens/welcome2.dart';
import 'screens/welcome3.dart';
import 'screens/welcome.dart';
import 'screens/splash.dart';
import 'screens/login.dart';
import 'screens/home.dart';
import 'screens/signup.dart';
import 'package:flutter/services.dart';
import './util/appProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
//set status bar
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: themeProvider.themeMode == ThemeMode.light
              ? Colors.white
              : Colors.black,
          statusBarIconBrightness: themeProvider.themeMode == ThemeMode.light
              ? Brightness.dark
              : Brightness.light),
    );
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeProvider.themeMode,
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        "/": (context) => const Splash(),
        "/home": (context) => const Home(),
        "/welcome": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/welcome2": (context) => const Welcome2(),
        "/welcome3": (context) => const Welcome3(),
        "/welcome4": (context) => const Welcome4(),
        "/signup": (context) => const Signup(),
        "/savings": (context) => const Savings(),
        "/profile": (context) => const Profile()
      },
    );
  }
}
