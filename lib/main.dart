import 'package:flutter/material.dart';
import 'package:stu_management/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color.fromARGB(255, 0, 183, 255),
          selectionColor: Color.fromARGB(117, 0, 183, 255),
          selectionHandleColor: Color.fromARGB(255, 0, 183, 255),
        ),
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      title: "Stu Management",
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
