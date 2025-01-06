import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class StudentEnrollement extends StatefulWidget {
  const StudentEnrollement({super.key});

  @override
  State<StudentEnrollement> createState() => _StudentEnrollementState();
}

class _StudentEnrollementState extends State<StudentEnrollement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Student Enrollment'),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: enrollmentForm(),
    );
  }
}
