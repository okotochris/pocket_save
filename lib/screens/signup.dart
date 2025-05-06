import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Center(child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color:Color.fromRGBO(0, 128, 128, 1),
                shape:BoxShape.circle,
                image: DecorationImage(
                  fit:BoxFit.contain,
                  image: AssetImage('assets/images/logo.png' ))
              ),
            ),
            const SizedBox(height:20),
            const Text('What’s your number?', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
            SizedBox(height: 10),
            const Text("Enter the phone number you used to sign up", style: TextStyle(fontWeight: FontWeight.w400, fontSize:16)),
            const Text("on PocketSave", style: TextStyle(fontWeight: FontWeight.w400, fontSize:16)),
            SizedBox(height: 26,),
             Column(
               
               children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Phone Number')),
                      TextField(
                      decoration: InputDecoration(
                       border:OutlineInputBorder(
                      borderSide: BorderSide(
                        color:Color.fromRGBO(0, 128, 128, 1),
                      )
                    ),
                    filled: true,
                    fillColor:Color.fromRGBO(217, 217, 217, 1),
                   ),
                 )
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                const Align(
                  
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Phone Number')),
                      TextField(
                      decoration: InputDecoration(
                       border:OutlineInputBorder(
                      borderSide: BorderSide(
                        color:Color.fromRGBO(0, 128, 128, 1),
                      )
                    ),
                    filled: true,
                    fillColor:Color.fromRGBO(217, 217, 217, 1),
                   ),
                 )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Forget your password?"),
                  TextButton(onPressed: (){}, child: Text("Click here", style:TextStyle(color:Color.fromRGBO(0, 128, 128, 1))))
                ],),
                SizedBox(height:245),
                GestureDetector(
                  onTap:() => Navigator.pushNamed(context, '/home'),
                  child: Container(
                    height:46 ,
                    width: 291,
                    alignment: Alignment.center,
                    color:Color.fromRGBO(0, 128, 128, 1),
                    child: Text("Login", style: TextStyle(color:Colors.white, fontSize: 22, fontWeight: FontWeight.w500),),
                  ),
                ),
               ],
             )
          ],
          ),),
        ),
      )
    );
  }
}