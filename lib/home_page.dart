import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget/catalog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


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
              child: const Row(
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Search product or brand',
                    style: TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Catalog(), 
          ],
        ),
      ),
    );
  }
}
