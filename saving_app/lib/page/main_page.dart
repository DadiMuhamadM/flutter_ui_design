import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saving_app/page/portofolio/portofolio.dart';
import 'package:saving_app/page/profile/profile.dart';
import 'package:saving_app/page/support/support.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';

import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const nameRoute = "/main";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List <Widget> pages = [
    const HomePage(),
    const Portofolio(),
    const Support(),
    const Profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: pages[_selectedIndex],
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: kGrey,
              blurRadius: 10,
            )
          ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          selectedLabelStyle: kBody2,
          unselectedLabelStyle: kBody2,
          selectedItemColor: kBlueRibbon,
          unselectedItemColor: kNavNonTap,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home.png",
                width: 24,
                color: _selectedIndex == 0 ? kBlueRibbon : kNavNonTap,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/portofolio.png",
                width: 24,
                color: _selectedIndex == 1 ? kBlueRibbon : kNavNonTap,
              ),
              label: "Portofolio",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/support.png",
                width: 24,
                color: _selectedIndex == 2 ? kBlueRibbon : kNavNonTap,
              ),
              label: "Support",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/profile.png",
                width: 24,
                color: _selectedIndex == 3 ? kBlueRibbon : kNavNonTap,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
