import 'package:baps_school_app/Widgets/widgets.dart';
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
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text("Mentors"),
      ),
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
                  title: "Subject Mentor",
                  color: Color.fromRGBO(232, 230, 237, 1),
                  icon: Icons.subject),
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
                      title: "Mentor Mapping",
                      color: Color.fromRGBO(255, 243, 220, 1),
                      icon: Icons.directions)),
              SizedBox(
                height: 30,
              ),
              ScheduleCard(
                  title: "Mentor List",
                  color: Color.fromRGBO(235, 238, 255, 1),
                  icon: Icons.list),
              SizedBox(
                height: 30,
              ),
              ScheduleCard(
                  title: "Leave Approval",
                  color: Color.fromRGBO(255, 218, 240, 1),
                  icon: Icons.exit_to_app),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
        backgroundColor: Color.fromRGBO(174, 188, 255, 1),
      ),
    );
  }
}
