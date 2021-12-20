import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BottomNavigationBar'),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/home.png"),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/search.png"),
              activeIcon: Image.asset(
                "assets/icons/search.png",
                color: Colors.lightBlue,
              ),
              label: 'Eksplor'),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/search.png"),
              activeIcon: Image.asset(
                "assets/icons/search.png",
                color: Colors.lightBlue,
              ),
              label: 'Pesanan'),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/chat.png"),
              activeIcon: Image.asset(
                "assets/icons/chat.png",
                color: Colors.lightBlue,
              ),
              label: 'Kotak Masuk'),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/account.png"),
              activeIcon: Image.asset("assets/icons/account.png",
                  color: Colors.lightBlue),
              label: 'Profil')
        ]));
  }
}
