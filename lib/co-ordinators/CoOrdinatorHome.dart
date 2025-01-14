import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/co-ordinators/coordinators_pages/enrollment/enrollment.dart';
import 'package:baps_school_app/co-ordinators/coordinators_pages/materials/materials.dart';
import 'package:baps_school_app/co-ordinators/coordinators_pages/schedule/schedule.dart';
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
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: titleColor,
        ),
        title: Text(
          "Menu",
          style: TextStyle(
              fontWeight: FontWeight.bold, letterSpacing: 1, color: titleColor),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Materials(),
                        ));
                  },
                  child: MenuCard(
                      image: AssetImage("assets/admin_student_icon.png"),
                      text: "Materials",
                      iconColor: Colors.blue)),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Schedule(),
                        ));
                  },
                  child: MenuCard(
                      image: AssetImage("assets/admin_student_icon.png"),
                      text: "Schedule")),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Enrollment(),
                          ));
                    },
                    child: MenuCard(
                        image:
                            AssetImage("assets/admin_student_icon.png"),
                        text: "Enrollment",
                        iconColor: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
