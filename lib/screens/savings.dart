import 'package:flutter/material.dart';
import 'package:pocket_save/util/appProvider.dart';
import 'package:provider/provider.dart';

class Savings extends StatefulWidget {
  const Savings({super.key});

  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  List screen = ['/home', '/savings', '/invest', '/profile'];
  int _currentIndex = 1;
  bool isShowing = false;
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Account')
            ]),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: themeProvider.themeMode == ThemeMode.dark
                                ? Colors.white
                                : Colors.black)),
                    child: Text(
                      'i',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: themeProvider.themeMode == ThemeMode.dark
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text('My Savings',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: themeProvider.themeMode == ThemeMode.dark
                                ? Colors.white
                                : Colors.black))),
                const SizedBox(
                  height: 8,
                ),
                Container(
                    width: 398,
                    height: 170,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 128, 128, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                            top: 14,
                            left: 35,
                            child: Text('+ Quick Save',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400))),
                        Positioned(
                            right: 8,
                            top: 11,
                            child: Container(
                              alignment: Alignment.center,
                              width: 130,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(120)),
                              child: const Text('Up to 20% returns',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white,
                                  )),
                            )),
                        const Positioned(
                            top: 57,
                            left: 16,
                            child: Text('Total Savings',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white))),
                        Positioned(
                          bottom: 62,
                          left: 16,
                          child: Row(
                            children: [
                              Text(isShowing ? '*****' : '₦ 2,000,000',
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                              const SizedBox(width: 18),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (isShowing) {
                                        isShowing = false;
                                      } else {
                                        isShowing = true;
                                      }
                                    });
                                  },
                                  child: Image(
                                      image: AssetImage(isShowing
                                          ? 'assets/images/eyeclose.png'
                                          : 'assets/images/eye.png')))
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
                      ],
                    )),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 128, 128, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: 74,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white)),
                                child: const Text('NEW GOAL',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.white))),
                            const SizedBox(
                              height: 47,
                            ),
                            const Text('Goal Based Savings',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.white)),
                            const SizedBox(
                              width: 140,
                              child: Text(
                                  'Where every save brings you closer to your goal',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 128, 128, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: 74,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white)),
                                child: const Text('ADD MONEY',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.white))),
                            const SizedBox(
                              height: 47,
                            ),
                            const Text('Savings Deposit',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.white)),
                            const SizedBox(
                              width: 140,
                              child: Text('Your saving our priority',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 128, 128, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: 74,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white)),
                                child: const Text('WITHDRAWAL',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.white))),
                            const SizedBox(
                              height: 47,
                            ),
                            const Text('Instant Withdrawal',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.white)),
                            const SizedBox(
                              width: 140,
                              child: Text('Cash out anytime',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 128, 128, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: 74,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white)),
                                child: const Text('LOCK FUND',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.white))),
                            const SizedBox(
                              height: 47,
                            ),
                            const Text('Lock',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.white)),
                            const SizedBox(
                              width: 140,
                              child: Text('Lock to avoid temptation',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 44),
                Container(
                    height: 122,
                    width: 390,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromRGBO(0, 128, 128, 1),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      children: [
                        const Positioned(
                            left: 13,
                            top: 16,
                            child: Text('Recent activities',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1)))),
                        Positioned(
                          bottom: 26,
                          left: 20,
                          child: Container(
                              height: 44,
                              width: 52,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(0, 128, 128, 1),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/logo.png')),
                              )),
                        ),
                        const Positioned(
                            bottom: 28,
                            left: 82,
                            child: Column(
                              children: [
                                Text('Just registered',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15)),
                                Text('2 hours ago',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(0, 0, 0, 1))),
                              ],
                            ))
                      ],
                    )),
                const SizedBox(
                  height: 18,
                ),
                Container(
                    alignment: Alignment.center,
                    height: 36,
                    width: 348,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(0, 128, 128, 1),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('Refresh',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF008080),
                        )))
              ],
            ),
          ),
        )));
  }
}
