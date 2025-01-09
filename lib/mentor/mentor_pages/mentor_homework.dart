import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

import '../../Widgets/widgets.dart';

class MentorHomework extends StatefulWidget {
  const MentorHomework({super.key});

  @override
  State<MentorHomework> createState() => _MentorHomeworkState();
}

class _MentorHomeworkState extends State<MentorHomework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.home,
        title: "Homework",
        onPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}