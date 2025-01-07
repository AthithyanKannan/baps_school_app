import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class AdminStudentIssue extends StatefulWidget {
  const AdminStudentIssue({super.key});

  @override
  State<AdminStudentIssue> createState() => _AdminStudentIssueState();
}

class _AdminStudentIssueState extends State<AdminStudentIssue>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
              3,
              (index) => Tab(
                text: "Issues ${index + 1}",
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: List.generate(
          3,
          (index) => mentorCard(
              name: "Prakash Raj",
              role: "2024VI023",
              date: "29/10/23",
              about: "Reason for the issues",
              onCall: () {},
              onEmail: () {},
              mentor_name: "Mr:Sasikumar",
              imagePath: ""),
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
}
