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
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text("Student Profile"),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchTextField(hintText: "Search", controller: searchController),
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
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: StudentList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 131, 197, 252),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AdminHome(),
              ));
        },
        child: Icon(
          Icons.home,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget StudentList() {
    return Container(
      height: 310,
      width: 330,
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
                child: Icon(Icons.person),
                backgroundColor: Colors.white,
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
                child: Icon(Icons.person),
                backgroundColor: Colors.white,
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
                child: Icon(Icons.person),
                backgroundColor: Colors.white,
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
                child: Icon(Icons.person),
                backgroundColor: Colors.white,
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
                child: Icon(Icons.person),
                backgroundColor: Colors.white,
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
                child: Icon(Icons.person),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Prakesh Raj K")
            ],
          ),
        ],
      ),
    );
  }
}
