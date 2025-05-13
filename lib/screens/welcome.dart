import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 128, 128, 1),
      body:Column(
        children: [
          const SizedBox(height:65),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/savepocket.png', height:50, width: 50,), 
            const SizedBox(width:15), 
            const Text("PocketSave", 
            style: TextStyle(color:Colors.white, fontWeight: FontWeight.w700, fontSize:24,
            ))
            ],),
            SizedBox(height: 52,),
            GestureDetector(child: Image.asset("assets/images/cypto1.png", height: 350, width: 175,), onTap: () => Navigator.pushNamed(context, '/welcome2'),),
            SizedBox(height: 63.13,),
            const Text("Build your savings", style:TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white)),
            const Text("with easy & discipline", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white)),
            const SizedBox(height: 61,),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/signup'),
              child: Container(
                height: 46,
                width: 271,
                color:Colors.white,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Create an account',
                     style:TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color:Color.fromRGBO(0, 128, 128, 1))
                     ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
             GestureDetector(
              onTap:() => Navigator.pushNamed(context, '/login'),
               child: Container(
                height: 46,
                width: 271,
                color:Color.fromRGBO(4, 4, 36, 1),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                     style:TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color:Colors.white)
                     ),
                ),
                           ),
             )
      ],)
    );
  }
}