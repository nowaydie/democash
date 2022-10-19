import 'package:democash/constants/global_variebles.dart';
import 'package:democash/features/account/screens/account_screen.dart';
import 'package:democash/features/shops/screens/shop_screen.dart';
import 'package:democash/features/home/screens/home_screen.dart';
import 'package:democash/providers/user_provider.dart';
import 'package:badges/badges.dart';
import 'package:democash/features/qr/screens/qr_screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:democash/features/settings/screens/settings_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    //1
    const HomeScreen(),
    //2
    const ShopScreen(),
    //3
    const QRScreen(),
    //4
    const AccountScreen(),
    //5
    const SettingsScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariebles.selectedNavBarColor,
        unselectedItemColor: GlobalVariebles.unselectedNavBarColor,
        backgroundColor: GlobalVariebles.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? GlobalVariebles.selectedNavBarColor
                        : GlobalVariebles.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.home_outlined,
              ),
            ),
            label: '',
          ),
          // SHOPS
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? GlobalVariebles.selectedNavBarColor
                        : GlobalVariebles.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Badge(
                elevation: 0,
                badgeContent: const Text(''),
                badgeColor: Colors.white,
                child: const Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
            ),
            label: '',
          ),
          //QR
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 4
                        ? GlobalVariebles.selectedNavBarColor
                        : GlobalVariebles.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.qr_code_2_outlined,
              ),
            ),
            label: '',
          ),
          //PRofile
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 3
                        ? GlobalVariebles.selectedNavBarColor
                        : GlobalVariebles.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.person_outline_outlined,
              ),
            ),
            label: '',
          ),
          //settings
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 4
                        ? GlobalVariebles.selectedNavBarColor
                        : GlobalVariebles.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.settings_outlined,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
