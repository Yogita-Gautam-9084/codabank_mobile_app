import 'package:flutter/material.dart';
import 'package:mobile_banking_app/module/profile/view_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  VeiwProfileScreen(),
    );
  }
}

