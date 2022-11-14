import 'package:flutter/material.dart';
import 'package:reg_page2/form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}
