import 'package:flutter/material.dart';
import 'package:stromleser_app/screen/stromleser_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF1C1C1C),
      ),
      home: DeviceScreen(),
    );
  }
}
