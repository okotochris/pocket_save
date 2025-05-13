import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello John',
                style: TextStyle(
                  fontSize: 30,
                )),
            const SizedBox(
              width: 187,
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 128, 128, 1),
                  borderRadius: BorderRadius.circular(50)),
            )
          ],
        ),
        const Text('Good evening, welcome back',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        Stack(children: [
          Container(
            height: 170,
            width: 398,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 128, 128, 1),
                borderRadius: BorderRadius.circular(15)),
          ),
            Positioned(
             left:16,
              top:13,
              child: Container(
                alignment: Alignment.center,
                 height: 19,
                 width: 114,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(120)),
                 child: Text('+Quick Save'),
               ),
            ),
             Positioned(
              right:8,
              top:13,
               child: Container(
                alignment: Alignment.center,
                 height: 19,
                 width: 114,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(120)),
                 child: Text('+Quick Save'),
               ),
             ),
                            
             const Positioned(
              top:58,
              left:16,
               child: Text('Total Savings',
                   style: TextStyle(
                       fontWeight: FontWeight.w400,
                       fontSize: 14,
                       color: Colors.white)),
             ),
                         
              const Positioned(
                bottom:65,
                left:16,
                child: Text('#0',
                   style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.w700,
                       color: Colors.white)),
              ),
             const SizedBox(
               width: 18,
             ),
             Positioned(
              bottom:71,
              left:63,
              child: Image.asset('assets/images/eye.png')),
             Positioned(
               right: 35,
               bottom: 20,
               child: Container(
                 height: 40,
                 width: 40,
                 decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Color.fromRGBO(253, 51, 67, 1)),
               ),
             ),
             Positioned(
               right: 10,
               bottom: 20,
               child: Container(
                 height: 40,
                 width: 40,
                 decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Color.fromRGBO(255, 203, 47, 0.73)),
               ),
             ),
          
        ]),
        const SizedBox(height: 18,),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My To  dos', style:TextStyle(fontSize:15, fontWeight: FontWeight.w400)),
            SizedBox(width: 245,),
            Row(children: [
              Text('Hide', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color:const Color.fromRGBO(0, 128, 128, 1))),
              Icon(Icons.forward)
            ],)
          ],
        ),
        Column(children: [
          Container(
            height:90,
            width: 105,
            child:Text('Approve\nDivice', style:TextStyle(fontSize:12, fontWeight: FontWeight.w400)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colors.grey,
            ),
          )
        ],)
      ],
      
    )));
  }
}
