import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/screens/checkout/checkout_screen.dart';
import 'package:test2/screens/dashboard_page/dashboard_view.dart';
import 'package:test2/screens/develop/devel.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class BottomNavbarView extends StatefulWidget {
  @override
  _BottomNavbarViewState createState() => _BottomNavbarViewState();
}

class _BottomNavbarViewState extends State<BottomNavbarView> {
  var data;
  final key = GlobalKey<State<BottomNavigationBar>>();
  // ignore: close_sinks
  int _selectedIndex = 2;
  void initState() {
    super.initState();
  }

  var body = [
    OnDevelScreen(),
    OnDevelScreen(),
    DashboardView(),
    OnDevelScreen(),
    OnDevelScreen(),
  ];
  Future<void> _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          key: key,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.assignment_rounded,
                  size: Sizes.s25,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wifi_protected_setup_rounded,
                  size: Sizes.s25,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: Sizes.s25,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.analytics_rounded,
                  size: Sizes.s25,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_rounded,
                  size: Sizes.s25,
                ),
                title: Text("")),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: green,
          onTap: _onItemTapped,
        ));
  }
}
