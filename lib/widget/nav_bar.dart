import 'package:flutter/material.dart';
import '../utils/app_images.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const NavBar({
    Key? key,
    required this.currentIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: Colors.white,
      unselectedItemColor: const Color(0xFF707070),
      selectedIconTheme: const IconThemeData(
        size: 25,
        color: Color(0xFFE8BE13),
      ),
      unselectedIconTheme: const IconThemeData(
        size: 25,
      ),
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFFE8BE13),
      onTap: onItemTapped,
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
