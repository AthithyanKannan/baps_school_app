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
          style: TextStyle(
              fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 20),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: ButtonsTabBar(
            controller: _tabController,
            backgroundColor: Color.fromRGBO(24, 87, 192, 1),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 131, 197, 252),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.home,
          color: Colors.blue,
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
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminStudentProfile(),
                ));
          },
          child: ScheduleCard(
              title: "Student Profile",
              color: Color.fromRGBO(232, 230, 237, 1),
              icon: Icons.person),
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
              title: "Issues Log",
              color: Color.fromRGBO(255, 243, 220, 1),
              icon: Icons.person),
        ),
      ],
    );
  }
}
