import 'package:flutter/material.dart';

import '../../shared/constants.dart';
import 'pages/bookshelf.dart';
import 'pages/homepage.dart';
import 'pages/inboxpage.dart';
import 'pages/profilepage.dart';

class MainHomePageState extends StatefulWidget {
  const MainHomePageState({Key? key}) : super(key: key);

  @override
  State<MainHomePageState> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<MainHomePageState> {
  int _pageIndex = 0;
  final List<Widget> _tablist = [
    const HomepageScreen(),
    const InboxpageScreen(),
    const BookshelfpageScreen(),
    const ProfilepageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: Stack(
        children: [
          _tablist.elementAt(_pageIndex),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
              alignment: const Alignment(0.0, 1.0),
              child: SizedBox(
                height: 75,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.shifting,
                    selectedItemColor: textColor1,
                    unselectedItemColor: textColor2,
                    showSelectedLabels: true,
                    showUnselectedLabels: false,
                    selectedLabelStyle: const TextStyle(fontSize: 9),
                    currentIndex: _pageIndex,
                    onTap: (int index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home",
                        backgroundColor: Color(0xff131316),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.sms),
                        label: "Inbox",
                        backgroundColor:Colors.white,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.book_rounded),
                        label: "Bookshelf",
                        backgroundColor: Color(0xff131316),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person_outline),
                        label: "Profile",
                        backgroundColor:Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
