import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/admin/admin_student/admin_student_pages/admin_student_issue.dart';
import 'package:baps_school_app/admin/admin_student/admin_student_pages/admin_student_profile.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class AdminStudent extends StatefulWidget {
  const AdminStudent({super.key});

  @override
  State<AdminStudent> createState() => _AdminStudentState();
}

class _AdminStudentState extends State<AdminStudent>
    with SingleTickerProviderStateMixin {
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
          "Student",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55.0),
          child: Column(
            children: [
              Container(
                color: Colors.black, // Color of the border line
                height: 0.2, // Height of the border
              ),
              SizedBox(
                height: 10,
              ),
              ButtonsTabBar(
                controller: _tabController,
                backgroundColor: Color.fromRGBO(24, 87, 192, 1),
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
                borderWidth: 1,
                borderColor: Color.fromRGBO(24, 87, 192, 1),
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
            ],
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
      floatingActionButton: customFloatingActionButton(
        onPressed: () {},
      ),
    );
  }

 Widget Grade() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminStudentProfile(),
                ));
          },
          child: ScheduleCard(
              textColor: Color.fromRGBO(101, 85, 143, 1),
              title: "Student Profile",
              color: Color.fromRGBO(232, 230, 237, 1),
              image: AssetImage("assets/admin_activity_general.png")),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminStudentIssue(),
                ));
          },
          child: ScheduleCard(
              textColor: Color.fromRGBO(238, 170, 22, 1),
              title: "Issue log",
              color: Color.fromRGBO(255, 243, 220, 1),
              image: AssetImage("assets/admin_activity_issue.png")),
        ),
      ],
    );
  }
}
