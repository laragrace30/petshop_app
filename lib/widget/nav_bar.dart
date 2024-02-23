import 'package:flutter/material.dart';
import 'package:petshop_app/cart.dart';
import 'package:petshop_app/utils/app_images.dart';
import '../home_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 1; 
  
List<Widget> screenList = [
    Container(height: 200, width: 200, color: Colors.red), // Placeholder for "Home"
    const HomePage(),
    const Cart(),
    Container(height: 200, width: 200, color: Colors.blue), // Placeholder for "Profile"
  ];

  void onItemTapped(int index) {
    if (index != 0 && index != 3) { 
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screenList[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
