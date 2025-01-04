import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class CoOrdinatorHome extends StatefulWidget {
  const CoOrdinatorHome({super.key});

  @override
  State<CoOrdinatorHome> createState() => _CoOrdinatorHomeState();
}

class _CoOrdinatorHomeState extends State<CoOrdinatorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded,color: titleColor,),
        title: Text(
          "Menu",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: titleColor
          ),
          ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuCard(icon: Icons.book_sharp, text: "Materials"),
              MenuCard(icon: Icons.schedule, text: "Schedule"),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                MenuCard(icon: Icons.edit_note_rounded, text: "Enrollment"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}