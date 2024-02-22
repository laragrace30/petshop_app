import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cat_details.dart';
import 'widget/catalog.dart';
import 'widget/nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                child: Text(
                  'Store',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 45,
              width: 335,
              decoration: BoxDecoration(
                color: const Color(0xFFF2F3F2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Search product or brand',
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF7C7C7C), fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
             GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CatDetails()), // Navigate to CatDetails screen
                );
              },
              child: Catalog(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}