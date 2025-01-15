import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:baps_school_app/mentor/mentor_activity/mentor_activity_pages/mentor_buffer_activity.dart';
import 'package:baps_school_app/mentor/mentor_activity/mentor_activity_pages/mentor_general_activity.dart';
import 'package:baps_school_app/mentor/mentor_activity/mentor_activity_pages/mentor_issue.dart';
import 'package:baps_school_app/mentor/mentor_activity/mentor_activity_pages/mentor_request.dart';
import 'package:baps_school_app/mentor/mentor_activity/mentor_activity_pages/mentor_survey.dart';
import 'package:flutter/material.dart';

class MentorActivity extends StatefulWidget {
  const MentorActivity({super.key});

  @override
  State<MentorActivity> createState() => _MentorActivityState();
}

class _MentorActivityState extends State<MentorActivity> {
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
                          builder: (context) => MentorBufferActivity(),
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
                          builder: (context) => MentorGeneralActivity(),
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
                          builder: (context) => MentorIssue(),
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
                          builder: (context) => MentorSurvey(),
                        ));
                  },
                  child: ScheduleCard(
                      title: "Survey",
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
                          builder: (context) => MentorRequest(),
                        ));
                  },
                  child: ScheduleCard(
                      title: "Requests",
                      textColor: Color.fromRGBO(173, 81, 145, 1),
                      image: AssetImage("mentor_assets/mentor_activity_request_icon.png"),
                      color: Color.fromRGBO(255, 218, 240, 1)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
