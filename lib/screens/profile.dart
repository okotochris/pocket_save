import 'package:flutter/material.dart';
import 'package:pocket_save/util/appProvider.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List screen = ['/home', '/savings', 'invest', '/profile'];
  int _currentIndex = 3;

  bool isSwitched = false;
  bool isColorStwitched = false;
  bool mode = false;
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
                padding: const EdgeInsets.all(13),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('My Account',
                                    style: TextStyle(
                                        fontSize: 29,
                                        fontWeight: FontWeight.w700)),
                                Text('John Doe',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        color: themeProvider.themeMode ==
                                                ThemeMode.light
                                            ? const Color(0xFF000000)
                                            : Colors.white))
                              ],
                            ),
                          ),
                          Container(
                              height: 45,
                              width: 45,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(0, 128, 128, 1),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.person_2_outlined))
                        ],
                      ),
                      const SizedBox(
                        height: 49,
                      ),
                      Row(
                        children: [
                          const Text('Enable finger Print/Face ID',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                          const SizedBox(width: 100),
                          Switch(
                            activeColor: const Color.fromRGBO(0, 128, 128, 1),
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text('Show Dashboard Account Balances',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                          const SizedBox(width: 28),
                          Switch(
                            activeColor: const Color.fromRGBO(0, 128, 128, 1),
                            value: isColorStwitched,
                            onChanged: (value) {
                              setState(() {
                                isColorStwitched = value;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              height: 62,
                              width: 189,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(0, 128, 128, 1),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Create Account',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20)),
                                  Text('Start now',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              height: 62,
                              width: 189,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(0, 128, 128, 1),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20)),
                                  Text('Referral  Point',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/zondicons_news-paper.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('Generate Account Statement',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/setting.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('My Account Settings',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/mode.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('Enable Dark Mode',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                          const SizedBox(width: 125),
                          Switch(
                            activeColor: const Color.fromRGBO(0, 128, 128, 1),
                            value:
                                Provider.of<ThemeProvider>(context).themeMode ==
                                    ThemeMode.dark,
                            onChanged: (bool isDark) {
                              Provider.of<ThemeProvider>(context, listen: false)
                                  .toggleTheme();
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/entypo_help.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('Self Help',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Vector.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('Security',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/withdraw.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('Withdraw  Funds',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/card.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('My Debit Cards & Linked Bank',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/guidance_bank.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('Withdrawal Bank',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/earn.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('Refer & Earn',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/contact.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('Contact Us',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(0, 128, 128, 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/update.png'))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text('Check for Update',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(height: 28),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(254, 5, 5, 1),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/logout.png'))),
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            const Text('Log Out',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(254, 5, 5, 1)))
                          ],
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
