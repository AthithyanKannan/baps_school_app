import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/admin/admin_mentor/admin_mentor_pages/admin_leave_approve.dart';
import 'package:baps_school_app/admin/admin_mentor/admin_mentor_pages/admin_mentor_list.dart';
import 'package:baps_school_app/admin/admin_mentor/admin_mentor_pages/admin_mentor_mapping.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminMentor extends StatefulWidget {
  const AdminMentor({super.key});

  @override
  State<AdminMentor> createState() => _AdminMentorState();
}

class _AdminMentorState extends State<AdminMentor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar:
          CustomAppBar(icon: Icons.arrow_back, title: "Mentor", onPress: () {}),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              ScheduleCard(
                  textColor: Color.fromRGBO(101, 85, 143, 1),
                  title: "Subject Mentor",
                  color: Color.fromRGBO(232, 230, 237,4),
                  image: AssetImage("assets/admin_mentor.png")),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminMentorMapping(),
                        ));
                  },
                  child: ScheduleCard(
                      textColor: Color.fromRGBO(238, 170, 22, 1),
                      title: "Mentor Mapping",
                      color: Color.fromRGBO(255, 243, 220, 1),
                      image: AssetImage("assets/admin_mentor_mapping.png"))),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminMentorList(),
                      ));
                },
                child: ScheduleCard(
                    textColor: Color.fromRGBO(53, 87, 255, 1),
                    title: "Mentor List",
                    color: Color.fromRGBO(235, 238, 255, 1),
                    image: AssetImage("assets/admin_mentor_list.png")),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminLeaveApprove(),
                      ));
                },
                child: ScheduleCard(
                    textColor: Color.fromRGBO(173, 81, 145, 1),
                    title: "Leave Approval",
                    color: Color.fromRGBO(255, 218, 240, 1),
                    image: AssetImage("assets/admin_leaveapproval.png")),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: customFloatingActionButton(onPressed: () {
        
      },),
    );
  }
}
