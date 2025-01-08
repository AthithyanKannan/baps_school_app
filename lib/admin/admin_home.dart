import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/admin/admin_activity/admin_activity.dart';
import 'package:baps_school_app/admin/admin_alerts/admin_alerts.dart';
import 'package:baps_school_app/admin/admin_approvals/admin_approvals.dart';
import 'package:baps_school_app/admin/admin_mentor/admin_mentor.dart';
import 'package:baps_school_app/admin/admin_schedule/admin_schedule.dart';
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
        leading: IconButton(
          icon: Image.asset(
            "assets/menu_back_button.png",
            height: 30, // Set the height to 30px
            width: 30, // Set the width to 30px
          ),
          onPressed: () {
            // Action for back button
          },
        ),
        title: Text(
          "Menu",
          style: TextStyle(
              fontSize: 28,
              color: Color.fromRGBO(74, 94, 109, 1),
              fontWeight: FontWeight.bold),
        ),
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
                  image: AssetImage("assets/admin_student_icon.png"),
                  text: "Student",
                  iconColor: Colors.green),
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
                  image: AssetImage("assets/admin_mentor_icon.png"),
                  text: "Mentor",
                  iconColor: Colors.greenAccent),
            )
          ]),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminAlerts(),
                    ));
              },
              child: MenuCard(
                  image: AssetImage("assets/admin_alerts_icon.png"),
                  text: "Alerts",
                  iconColor: Colors.orange),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminApprovals(),
                    ));
              },
              child: MenuCard(
                  image: AssetImage("assets/admin_approvals_icon.png"),
                  text: "Approvals",
                  iconColor: Colors.green),
            )
          ]),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminActivity(),
                    ));
              },
              child: MenuCard(
                  image: AssetImage("assets/admin_activity_icon.png"),
                  text: "Activity",
                  iconColor: Colors.yellow),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminSchedule(),
                    ));
              },
              child: MenuCard(
                  image: AssetImage("assets/admin_calender_icon.png"),
                  text: "Schedule",
                  iconColor: Colors.green),
            )
          ]),
        ],
      ),
    );
  }
}
