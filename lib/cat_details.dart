import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop_app/utils/app_images.dart';

import 'widget/nav_bar.dart';

class CatDetails extends StatefulWidget {
  const CatDetails({Key? key}) : super(key: key);

  @override
  _CatDetailsState createState() => _CatDetailsState();
}

class _CatDetailsState extends State<CatDetails> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.cprofile),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Center(
              child: Container(
                height: 105,
                width: 366,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(62, 158, 158, 158),
                      offset: Offset(0, 3),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 35,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.black,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'Sphinx Cat',
                            ),
                            TextSpan(
                                text: '\nCanada · 8m',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromRGBO(95, 95, 99, 100))),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/gender.png')
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 495,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/pet.png'),
                  const SizedBox(width: 5),
                  Text('About Sphinx',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 19)),
                ],
              ),
            ),
          ),
          Positioned(
              top: 535,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: Row(
                  children: [
                    Container(
                      height: 81,
                      width: 116,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(96, 152, 255, 152),
                          borderRadius: BorderRadius.circular(17)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: const Color(0xFF5F5F63),
                            ),
                            children: <TextSpan>[
                              const TextSpan(
                                text: 'Weight',
                              ),
                              TextSpan(
                                  text: '\n3.5kg',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w100,
                                      color: const Color(0xFFE8BE13))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 81,
                      width: 116,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(96, 152, 255, 152),
                          borderRadius: BorderRadius.circular(17)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: const Color(0xFF5F5F63),
                            ),
                            children: <TextSpan>[
                              const TextSpan(
                                text: 'Height',
                              ),
                              TextSpan(
                                  text: '\n22cm',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w100,
                                      color: const Color(0xFFE8BE13))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 81,
                      width: 116,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(96, 152, 255, 152),
                          borderRadius: BorderRadius.circular(17)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: const Color(0xFF5F5F63),
                            ),
                            children: <TextSpan>[
                              const TextSpan(
                                text: 'Color',
                              ),
                              TextSpan(
                                  text: '\nDark Pink',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w100,
                                      color: const Color(0xFFE8BE13))),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              top: 630,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,),
                child: Text(
                    'The Sphinx cat, hairless and charming, boasts \na velvety skin in various colors and patterns. \nPlayful and affectionate, they capture hearts \nwith their unique appearance and lively \npersonalities.',
                    style: GoogleFonts.poppins(
                        fontSize: 15, color: const Color(0xFFA1A1A1))),
              )),
              Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
