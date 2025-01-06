import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class MentorEnrollment extends StatefulWidget {
  const MentorEnrollment({super.key});

  @override
  State<MentorEnrollment> createState() => _MentorEnrollmentState();
}

class _MentorEnrollmentState extends State<MentorEnrollment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Mentor Enrollment'),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: enrollmentForm(),
    );;
  }
}