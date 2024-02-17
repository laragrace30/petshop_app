import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:30),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 26,
                                color: Colors.black
                              ),
                              children: <TextSpan>[
                            TextSpan(text: 'Your One-Stop Pet Shop'),
                            TextSpan(text: ' Experience!')
                          ])),
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
