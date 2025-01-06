import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/admin/admin_mentor/admin_mentor.dart';
import 'package:baps_school_app/admin/admin_student/admin_student.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: Icon(Icons.arrow_back),
        title: Text("Menu"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminStudent(),
                    ));
              },
              child: MenuCard(
                  icon: Icons.person, text: "Student", iconColor: Colors.green),
            ),
            GestureDetector(
               onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminMentor(),
                    ));
              },
              child: MenuCard(
                  icon: Icons.person_2,
                  text: "Mentor",
                  iconColor: Colors.greenAccent),
            )
          ]),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            MenuCard(
                icon: Icons.bus_alert_sharp,
                text: "Alerts",
                iconColor: Colors.orange),
            MenuCard(
                icon: Icons.time_to_leave,
                text: "Approvals",
                iconColor: Colors.green)
          ]),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            MenuCard(
                icon: Icons.time_to_leave,
                text: "Activity",
                iconColor: Colors.yellow),
            MenuCard(
                icon: Icons.calendar_month,
                text: "Schedule",
                iconColor: Colors.green)
          ]),
        ],
      ),
    );
  }
}
