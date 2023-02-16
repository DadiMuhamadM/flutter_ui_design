import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery_mobile/screen/favorite/favorite.dart';
import 'package:food_delivery_mobile/screen/history/history.dart';
import 'package:food_delivery_mobile/screen/home/home_page.dart';
import 'package:food_delivery_mobile/screen/search/search.dart';
import 'package:food_delivery_mobile/thema.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  static const nameRoute = "/";

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static List<Widget> page = [
    const HomePage(),
    const SearchPage(),
    const FavoritePage(),
    const HistoriPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBlack,
        body: page[_selectedIndex],
        bottomNavigationBar: _bottomBar());
  }

  Widget _bottomBar() {
    return Container(
      height: 94,
      color: colorBG,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          backgroundColor: colorBlack,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icon/home.png",
                  width: 32,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icon/search.png",
                  width: 32,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icon/love.png",
                  width: 32,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icon/history.png",
                  width: 32,
                ),
                label: ""),
          ],
        ),
      ),
    );
  }
}
