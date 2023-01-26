import 'package:e_aook_app/screen/cart/cart_page.dart';
import 'package:e_aook_app/screen/home/home_page.dart';
import 'package:e_aook_app/screen/save/save_page.dart';
import 'package:e_aook_app/screen/user/user_page.dart';
import 'package:e_aook_app/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBar extends StatefulWidget {
  static const nameRoute = '/';
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    const HomePage(),
    const CartPage(),
    const SavePage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: ((i) {
          setState(() {
            _selectedIndex = i;
          });
        }),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 15),
              child: Image.asset(
                "assets/icons/icon-home.png",
                width: 20,
                color: _selectedIndex == 0 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 15),
              child: Image.asset(
                "assets/icons/icon-save-nav.png",
                width: 14,
                color: _selectedIndex == 1 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 15),
              child: Image.asset(
                "assets/icons/icon-cart.png",
                width: 20,
                color: _selectedIndex == 2 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 15),
              child: Image.asset(
                "assets/icons/icon-user.png",
                width: 18,
                color: _selectedIndex == 3 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: Stack(children: 
        _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
    );
  }
}
