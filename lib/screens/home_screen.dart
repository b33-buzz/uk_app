import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/screens/search_screen.dart';
import 'package:uk_app/screens/setting_screen.dart';
import 'package:uk_app/widget/activity_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  final List<Widget> _screens = [
    const HomeWidget(),
    const SearchScreen(),
    const SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: const Color(0xFF9C6DFF),
        unselectedItemColor: const Color(0xFFCCCCCC),
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: onTapped,
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 90),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Home Feed',
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 54),
              Row(
                children: [
                  Text(
                    'Javascript',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Color(0xFF14D39A)),
                  width: 330,
                  height: 80,
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleCourse(
                          text: 'JAVASCRIPT COURSE',
                        ),
                        DescTitleCourse(
                          text: 'VARIABLES',
                        )
                      ])),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.white),
                width: 330,
                height: 180,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DescCard(
                      text:
                          'A Javascript variable is simply a name of\nstorage location.',
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ActivityWidget(
                              text: 'Community Forums',
                            ),
                            ActivityWidget(text: 'Review Concept'),
                            ActivityWidget(text: 'Practice Skills'),
                          ],
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Python',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Color(0xFF14D39A)),
                      width: 330,
                      height: 80,
                      child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleCourse(
                              text: 'PYTHON COURSE',
                            ),
                            DescTitleCourse(
                              text: 'VARIABLES',
                            )
                          ]),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.white),
                      width: 330,
                      height: 180,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DescCard(
                              text:
                                  'A Python variable is simply a name of\nstorage location.'),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ActivityWidget(
                                  text: 'Community Forums',
                                ),
                                ActivityWidget(text: 'Review Concept'),
                                ActivityWidget(text: 'Practice Skills'),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class DescCard extends StatelessWidget {
  final String text;
  const DescCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15),
      child: Text(
        text,
        style: GoogleFonts.inter(
            color: const Color(0xFF7E7E7E),
            fontSize: 12,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

class DescTitleCourse extends StatelessWidget {
  final String text;

  const DescTitleCourse({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: GoogleFonts.inter(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class TitleCourse extends StatelessWidget {
  final String text;
  const TitleCourse({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Text(
        text,
        style: GoogleFonts.inter(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      ),
    );
  }
}
