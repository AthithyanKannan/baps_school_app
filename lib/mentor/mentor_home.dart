import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:baps_school_app/mentor/mentor_activity/mentor_activity.dart';
import 'package:baps_school_app/mentor/mentor_assesment_request/mentor_assesment_request.dart';
import 'package:baps_school_app/mentor/mentor_dashboard/mentor_dashboard.dart';
import 'package:baps_school_app/mentor/mentor_homework/mentor_homework.dart';
import 'package:baps_school_app/mentor/mentor_leave_approval/mentor_leave_approval.dart';
import 'package:baps_school_app/mentor/mentor_messages/mentor_messages.dart';
import 'package:flutter/material.dart';

class MentorHome extends StatefulWidget {
  const MentorHome({super.key});

  @override
  State<MentorHome> createState() => _MentorHomeState();
}

class _MentorHomeState extends State<MentorHome> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorDashboard(),
                        ));
                  },
                  child: MenuCard(
                      image:
                          AssetImage("mentor_assets/mentor_dashboard_icon.png"),
                      text: "Dashboard"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorLeaveApproval(),
                        ));
                  },
                  child: MenuCard(
                      image:
                          AssetImage("mentor_assets/mentor_approve_icon.png"),
                      text: "Leave Approval"),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorHomework(),
                        ));
                  },
                  child: MenuCard(
                      image:
                          AssetImage("mentor_assets/mentor_homework_icon.png"),
                      text: "Homework"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorMessages(),
                        ));
                  },
                  child: MenuCard(
                      image:
                          AssetImage("mentor_assets/mentor_messages_icon.png"),
                      text: "Messages"),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorActivity(),
                        ));
                  },
                  child: MenuCard(
                      image:
                          AssetImage("mentor_assets/mentor_activity_icon.png"),
                      text: "Activity"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorAssesmentRequest(),
                        ));
                  },
                  child: MenuCard(
                      image:
                          AssetImage("mentor_assets/mentor_assesment_icon.png"),
                      text: "Assesment request"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
