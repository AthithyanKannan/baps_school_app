import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';


class Enrollment extends StatefulWidget {
  const Enrollment({super.key});

  @override
  State<Enrollment> createState() => _EnrollmentState();
}

class _EnrollmentState extends State<Enrollment> with SingleTickerProviderStateMixin{
    late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.home)),
        backgroundColor: Colors.white,
        title: const Text(
          "Enrollment",
          style: TextStyle(
              fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 20),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: ButtonsTabBar(
            controller: _tabController,
            backgroundColor: Color.fromRGBO(24, 87, 192,1),
            unselectedBackgroundColor: Colors.white,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            labelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            borderWidth: 1,
            borderColor: Colors.blue,
            unselectedBorderColor: Colors.white,
            radius: 25,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            tabs: List.generate(
              10,
              (index) => Tab(
                text: "Grade ${index + 1}",
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: List.generate(
          10,
          (index) => Grade(),
        ),
      ),
    );
  }
  Widget Grade() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
            title: "Student Enrollment",
            color: Color.fromRGBO(201, 247, 245, 1),
            icon: Icons.person_2),
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
            title: "Mentor Enrollment",
            color: Color.fromRGBO(232, 230, 237, 1),
            icon: Icons.engineering_rounded),
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
            title: "Subject & Activity Enrollment",
            color: Color.fromRGBO(255, 243, 220, 1),
            icon: Icons.subject),
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
            title: "Infrastructure Enrollment",
            color: Color.fromRGBO(235, 238, 255, 1),
            icon: Icons.info),
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
            title: "Settings",
            color: Color.fromRGBO(255, 214, 238, 1),
            icon: Icons.settings),
      ],
    );
  }
}