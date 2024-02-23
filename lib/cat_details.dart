import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget/nav_bar.dart';

class CatDetails extends StatefulWidget {
  final String imagePath;
  final String name;
  final String place;
  final String cat;
  final String weight;
  final String height;
  final String color;
  final String description;

  const CatDetails({
    required this.imagePath,
    required this.name,
    required this.place,
    required this.cat,
    required this.weight,
    required this.height,
    required this.color,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  _CatDetailsState createState() => _CatDetailsState();
}

class _CatDetailsState extends State<CatDetails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 410.47,
            width:394.47,
            color: Colors.blue,
            child: 
            Image.asset(widget.imagePath, fit: BoxFit.cover)),
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
                          children: <TextSpan>[
                            TextSpan(
                              text: widget.name,
                            ),
                            TextSpan(
                              text: '\n${widget.place}',
                              style: const TextStyle(
                                fontSize: 17,
                                color: Color.fromRGBO(95, 95, 99, 100),
                              ),
                            ),
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
            top: 490,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/pet.png'),
                  const SizedBox(width: 5),
                  Text(widget.cat,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 19)),
                ],
              ),
            ),
          ),
          Positioned(
            top: 530,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 5),
              child: Row(
                children: [
                  _buildDetailItem('Weight', widget.weight),
                  const SizedBox(width: 10),
                  _buildDetailItem('Height', widget.height),
                  const SizedBox(width: 10),
                  _buildDetailItem('Color', widget.color),
                ],
              ),
            ),
          ),
          Positioned(
              top: 630,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('${widget.description}',
                    overflow: TextOverflow.clip,
                    maxLines: 5,
                    style: GoogleFonts.poppins(
                        fontSize: 15, color: const Color(0xFFA1A1A1))),
              )),
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Container(
      height: 81,
      width: 116,
      decoration: BoxDecoration(
        color: const Color.fromARGB(96, 152, 255, 152),
        borderRadius: BorderRadius.circular(17),
      ),
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
              TextSpan(
                text: title,
              ),
              TextSpan(
                text: '\n$value',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w100,
                  color: const Color(0xFFE8BE13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
