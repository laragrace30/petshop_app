import 'package:flutter/material.dart';
import 'package:petshop_app/splash_screen.dart';
import 'package:provider/provider.dart';

import 'widget/cat_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MaterialApp(
        title: 'Pet Shop',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
