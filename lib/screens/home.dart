import 'package:flutter/material.dart';
import 'package:pocket_save/util/appProvider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List screen = ['/home', '/savings', 'invest', '/profile'];
  int _currentIndex = 0;
  bool show = false;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            _currentIndex = index;
            Navigator.pushNamed(context, screen[_currentIndex]);
          },
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: themeProvider.themeMode == ThemeMode.light
              ? Colors.black
              : Colors.white,
          selectedItemColor: const Color.fromRGBO(0, 128, 128, 1),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Savings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: 'Invest'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
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
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/logo.png'),
                            fit: BoxFit.cover)),
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
                  left: 16,
                  top: 13,
                  child: Container(
                    alignment: Alignment.center,
                    height: 19,
                    width: 114,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(120)),
                    child: const Text('+Quick Save',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 13,
                  child: Container(
                    alignment: Alignment.center,
                    height: 19,
                    width: 114,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(120)),
                    child: const Text('+Quick Save',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                const Positioned(
                  top: 58,
                  left: 16,
                  child: Text('Total Savings',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Positioned(
                  bottom: 65,
                  left: 16,
                  child: Row(
                    children: [
                      Text(show ? '₦ 2,000,000' : '*****',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      const SizedBox(width: 10),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              if (show) {
                                show = false;
                              } else {
                                show = true;
                              }
                            });
                          },
                          child: Image(
                              image: AssetImage(show
                                  ? 'assets/images/eyeclose.png'
                                  : 'assets/images/eye.png'))),
                    ],
                  ),
                ),
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
              const SizedBox(
                height: 18,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('My To  dos',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  SizedBox(
                    width: 245,
                  ),
                  Row(
                    children: [
                      Text('Hide',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color.fromRGBO(0, 128, 128, 1))),
                      Text(' >',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 128, 128, 1)))
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Stack(
                    children: [
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 128, 128, 1),
                            )),
                      ),
                      const Positioned(
                        top: 9,
                        left: 9,
                        child: Text('Approve\nDivice',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                      ),
                      Positioned(
                        top: 18,
                        right: 20,
                        child: Container(
                          height: 15.19,
                          width: 7.75,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/phone.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const Positioned(
                          bottom: 35,
                          left: 12,
                          child: SizedBox(
                            width: 86,
                            child: Divider(
                              color: Color.fromRGBO(0, 128, 128, 1),
                              thickness: 1,
                            ),
                          )),
                      Positioned(
                        left: 9,
                        bottom: 1,
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(197, 200, 200, 1),
                            ),
                            child: const Text('>',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 128, 128, 1)))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 128, 128, 1),
                            )),
                      ),
                      const Positioned(
                        top: 9,
                        left: 9,
                        child: Text('Link Bank Or\nATM CARD',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                      ),
                      Positioned(
                        top: 18,
                        right: 5,
                        child: Container(
                          height: 15,
                          width: 19.96,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/atm.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const Positioned(
                          bottom: 35,
                          left: 12,
                          child: SizedBox(
                            width: 86,
                            child: Divider(
                              color: Color.fromRGBO(0, 128, 128, 1),
                              thickness: 1,
                            ),
                          )),
                      Positioned(
                        left: 9,
                        bottom: 1,
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(197, 200, 200, 1),
                            ),
                            child: const Text('>',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 128, 128, 1)))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 128, 128, 1),
                            )),
                      ),
                      const Positioned(
                        top: 14,
                        left: 9,
                        child: Text('Enable FaceID\n/Fingerprint',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                      ),
                      Positioned(
                        top: 22,
                        right: 5,
                        child: Container(
                          height: 15.19,
                          width: 7.75,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/face.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const Positioned(
                          bottom: 35,
                          left: 12,
                          child: SizedBox(
                            width: 86,
                            child: Divider(
                              color: Color.fromRGBO(0, 128, 128, 1),
                              thickness: 1,
                            ),
                          )),
                      Positioned(
                        left: 9,
                        bottom: 1,
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(197, 200, 200, 1),
                            ),
                            child: const Text('>',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 128, 128, 1)))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 128, 128, 1),
                            )),
                      ),
                      const Positioned(
                        top: 9,
                        left: 9,
                        child: Text('Approve\nDivice',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                      ),
                      Positioned(
                        top: 18,
                        right: 20,
                        child: Container(
                          height: 15.19,
                          width: 7.75,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/phone.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const Positioned(
                          bottom: 35,
                          left: 12,
                          child: SizedBox(
                            width: 86,
                            child: Divider(
                              color: Color.fromRGBO(0, 128, 128, 1),
                              thickness: 1,
                            ),
                          )),
                      Positioned(
                        left: 9,
                        bottom: 7,
                        child: Container(
                          height: 22,
                          width: 22,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ]),
              ),
              const SizedBox(
                height: 23,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Suggestions For You',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  SizedBox(
                    width: 155,
                  ),
                  Row(
                    children: [
                      Text('View All',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color.fromRGBO(0, 128, 128, 1))),
                      Text(' >',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 128, 128, 1)))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 70,
                      width: 208,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 128, 128, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          const Column(
                            children: [
                              Text('How Group \nB made over #20m \nin safelock',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))
                            ],
                          ),
                          const SizedBox(width: 4),
                          Container(
                            height: 46,
                            width: 80,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/cryp2.png'),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    width: 2)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(5),
                      height: 70,
                      width: 208,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 128, 128, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text('How interest rates \n on PocketSave work',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                          Container(
                              height: 15,
                              width: 68,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  )),
                              child: const Text('Click to  watch >',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 5,
                                      fontWeight: FontWeight.w600)))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('My Saving Plans',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  SizedBox(
                    width: 155,
                  ),
                  Row(
                    children: [
                      Text('Find More',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color.fromRGBO(0, 128, 128, 1))),
                      Text(' >',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 128, 128, 1)))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 107,
                          width: 131,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 128, 128, 1),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                            top: 9,
                            right: 12,
                            child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 51,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text('SETUP',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400)))),
                        const Positioned(
                            left: 5,
                            top: 50,
                            child: Text('PiggyBank',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))),
                        const Positioned(
                          bottom: 10,
                          left: 5,
                          child: SizedBox(
                              width: 134,
                              child: Text(
                                  'Automatic daily, weeklyor monthly savings',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white))),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 107,
                          width: 131,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 128, 128, 1),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                            top: 9,
                            right: 12,
                            child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text('GET USD',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400)))),
                        const Positioned(
                            left: 5,
                            top: 50,
                            child: Text('Pocket Dollar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))),
                        const Positioned(
                          bottom: 10,
                          left: 5,
                          child: SizedBox(
                              width: 134,
                              child: Text('Save in dollar and earn interest',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white))),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 107,
                          width: 131,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 128, 128, 1),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                            top: 9,
                            right: 12,
                            child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text('SETUPLOCK FUND',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400)))),
                        const Positioned(
                            left: 5,
                            top: 50,
                            child: Text('Lock',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))),
                        const Positioned(
                          bottom: 10,
                          left: 5,
                          child: SizedBox(
                              width: 134,
                              child: Text('Lock now to avoid temptattion',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white))),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Opportunities',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  SizedBox(
                    width: 155,
                  ),
                  Row(
                    children: [
                      Text('Find More',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color.fromRGBO(0, 128, 128, 1))),
                      Text(' >',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 128, 128, 1)))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(children: [
                      Container(
                        height: 107,
                        width: 131,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 128, 128, 1),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Positioned(
                          top: 9,
                          right: 12,
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              alignment: Alignment.center,
                              height: 20,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text('INVEST',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400)))),
                      const Positioned(
                          top: 41,
                          left: 30,
                          child: Column(
                            children: [
                              Text('20%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              Text('per annum',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400))
                            ],
                          ))
                    ]),
                    const SizedBox(
                      width: 18,
                    ),
                    Stack(children: [
                      Container(
                        height: 107,
                        width: 131,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 128, 128, 1),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Positioned(
                          top: 9,
                          right: 12,
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              alignment: Alignment.center,
                              height: 20,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text('N5K SOLD OUT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400)))),
                      const Positioned(
                          top: 41,
                          left: 30,
                          child: Column(
                            children: [
                              Text('30%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              Text('per annum',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400))
                            ],
                          ))
                    ]),
                    const SizedBox(
                      width: 18,
                    ),
                    Stack(children: [
                      Container(
                        height: 107,
                        width: 131,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 128, 128, 1),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Positioned(
                          top: 9,
                          right: 12,
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              alignment: Alignment.center,
                              height: 20,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text('N5K SOLD OUT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400)))),
                      const Positioned(
                          top: 41,
                          left: 30,
                          child: Column(
                            children: [
                              Text('35%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              Text('per annum',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400))
                            ],
                          ))
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
