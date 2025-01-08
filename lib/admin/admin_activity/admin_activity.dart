import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/admin/admin_activity/admin_activity_pages/admin_buffer_activity.dart';
import 'package:baps_school_app/admin/admin_activity/admin_activity_pages/admin_general_activity.dart';
import 'package:baps_school_app/admin/admin_activity/admin_activity_pages/admin_issue.dart';
import 'package:baps_school_app/admin/admin_activity/admin_activity_pages/admin_survey.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminActivity extends StatefulWidget {
  const AdminActivity({super.key});

  @override
  State<AdminActivity> createState() => _AdminActivityState();
}

class _AdminActivityState extends State<AdminActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
          icon: Icons.home,
          title: "Activity",
          onPress: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminBufferActivity(),
                        ));
                  },
                  child: ScheduleCard(
                      title: "Buffer Activity",
                      textColor: Color.fromRGBO(15, 190, 179, 1),
                      image: AssetImage("assets/admin_activity_buffer.png"),
                      color: Color.fromRGBO(201, 247, 245, 1)),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminGeneralActivity(),
                        ));
                  },
                  child: ScheduleCard(
                      title: "General Activity",
                      textColor: Color.fromRGBO(101, 85, 143, 1),
                      image: AssetImage("assets/admin_activity_general.png"),
                      color: Color.fromRGBO(101, 85, 143, 0.12)),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminIssue(),
                        ));
                  },
                  child: ScheduleCard(
                      title: "Issue",
                      textColor: Color.fromRGBO(238, 170, 22, 1),
                      image: AssetImage("assets/admin_activity_issue.png"),
                      color: Color.fromRGBO(255, 243, 220, 1)),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminSurvey(),
                        ));
                  },
                  child: ScheduleCard(
                      title: "Survey",
                      textColor: Color.fromRGBO(101, 85, 143, 1),
                      image: AssetImage("assets/admin_activity_general.png"),
                      color: Color.fromRGBO(101, 85, 143, 0.12)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
