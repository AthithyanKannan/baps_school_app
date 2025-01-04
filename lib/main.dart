import 'package:baps_school_app/Welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
      // ),
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
