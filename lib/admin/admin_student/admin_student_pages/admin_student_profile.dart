import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/admin/admin_home.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminStudentProfile extends StatefulWidget {
  const AdminStudentProfile({super.key});

  @override
  State<AdminStudentProfile> createState() => _AdminStudentProfileState();
}

class _AdminStudentProfileState extends State<AdminStudentProfile> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: CustomAppBar(
          icon: Icons.arrow_back,
          title: "Student Profile",
          onPress: () {
            Navigator.pop(context);
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchTextField(
                  hintText: "Search Student", controller: searchController),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: StudentList(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Recent Searches",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: StudentList(),
              ),
            ],
          ),
        ),
        floatingActionButton: customFloatingActionButton(
          onPressed: () {},
        ));
  }

  Widget StudentList() {
    return Container(
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                // blurRadius: 3,
                // spreadRadius: 1,
                // color: Colors.grey
                )
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset("assets/admin_student_profile_icon.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Prakesh Raj K",
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset("assets/admin_student_profile_icon.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Prakesh Raj K")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset("assets/admin_student_profile_icon.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Prakesh Raj K")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset("assets/admin_student_profile_icon.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Prakesh Raj K")
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
