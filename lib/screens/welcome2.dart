import 'package:flutter/material.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 128, 128, 1),
      body:Column(
        children: [
          const SizedBox(height:60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/savepocket.png', height:50, width: 50,), 
            const SizedBox(width:15), 
            const Text("PocketSave", 
            style: TextStyle(color:Colors.white, fontWeight: FontWeight.w700, fontSize:24,
            ))
            ],),
            GestureDetector(child: Image.asset("assets/images/cryp2.png", height: 350, width: 175,), onTap: () => Navigator.pushNamed(context, '/welcome3'),),
            const Text("Invest with ease in", style:TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white)),
            const Text("verified opportunities", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white)),
            const SizedBox(height: 60,),
            Container(
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