import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              _buildCatalogItem('assets/images/Cat1.png'),
              const SizedBox(height: 15),
              _buildCatalogItem('assets/images/Cat2.png'),
              const SizedBox(height: 15),
              _buildCatalogItem('assets/images/Cat3.png'),
            ],
          ),
          Column(
            children: [
              _buildCatalogItem('assets/images/Cat4.png'),
              const SizedBox(height: 15),
              _buildCatalogItem('assets/images/Cat5.png'),
              const SizedBox(height: 15),
              _buildCatalogItem('assets/images/Cat6.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCatalogItem(String imagePath) {
    return Container(
      alignment: Alignment.topCenter,
      height: 165,
      width: 168,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(62, 158, 158, 158),
            offset: Offset(0, 5),
            blurStyle: BlurStyle.inner,
            blurRadius: 35,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Persian Cat',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '\$10',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFE8BE13),
                  ),
                ),
                Image.asset(
                  'assets/images/Frame 231.png',
                  color: const Color(0xFFE8BE13),
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
