import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cart'),
        centerTitle: true,
        backgroundColor: const Color(0xFFE8BE13),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.grey,
              )
            ],
          ),
        ]
        ),
    );
  }
}