import 'package:flutter/material.dart';
import 'package:petshop_app/home_page.dart';
import '../utils/app_images.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const NavBar({
    Key? key,
    required this.currentIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
      currentIndex: widget.currentIndex,
      selectedItemColor: const Color(0xFFE8BE13),
      onTap: widget.onItemTapped,
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

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> screenList = [
    const HomePage(),
    Container(
      height: 200,
      width: 200,
      color: Colors.red,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.green,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screenList.elementAt(currentIndex),
      ),
      bottomNavigationBar: NavBar(
        currentIndex: currentIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
