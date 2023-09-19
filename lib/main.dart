import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uk_app/screens/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF3D67FF)),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
