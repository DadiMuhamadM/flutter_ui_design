import 'package:disney_app/screen/group/group.dart';
import 'package:disney_app/screen/home/home_page.dart';
import 'package:disney_app/screen/notification/notif.dart';
import 'package:disney_app/screen/search/search.dart';
import 'package:disney_app/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  static const nameRoute = "/main";

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static List<Widget> page = [
    const HomePage(),
    const SearchScreen(),
    const NotifPage(),
    const GroupPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: page[_selectedIndex],
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _bottomBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        height: 68,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: onItemTapped,
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/airplay.png",
                      width: 24,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/search.png",
                      width: 24,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/bell.png",
                      width: 24,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/group.png",
                      width: 24,
                    ),
                    label: ""),
              ]),
        ),
      ),
    );
  }
}
