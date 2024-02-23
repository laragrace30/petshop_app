import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop_app/home_page.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/Image.png'),
          Positioned(
            left: 0,
            right: 0,
            bottom: 265,
            height: 55,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 35,
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFE0E0E1))),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 35,
                      height: 10,
                      decoration: BoxDecoration(
                          color: const Color(0xFFE8BE13),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 35,
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFE0E0E1))),
                    )
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 265,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Your One-Stop Pet Shop',
                        ),
                        TextSpan(
                          text: ' Experience!\n',
                        ),
                        TextSpan(
                            text:
                                '\nConnect with 5-star pet caregivers near \nyou who offer boarding, walking, house \nsitting, or day care.',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 15,
            child: Padding(
              padding: const EdgeInsets.only(left:10, right: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 45),
                  backgroundColor: const Color(0xFFE8BE13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Get Started',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.51,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
