import 'package:flutter/material.dart';
import '../utils/app_images.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(), 
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.grey,
      unselectedItemColor: const Color(0xFF707070),
      selectedIconTheme: const IconThemeData(
        size: 25,
        color: Colors.white,
      ),
      unselectedIconTheme: const IconThemeData(
        size: 25,
      ),
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      selectedItemColor: const Color(0xFFE8BE13),
      onTap: (index) {},
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.home)),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.catalog)),
          label: 'Catalog',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.cart)),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.profile)),
          label: 'Profile',
        ),
      ],
    );
  }
}
