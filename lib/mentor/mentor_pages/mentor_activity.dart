import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class MentorActivity extends StatefulWidget {
  const MentorActivity({super.key});

  @override
  State<MentorActivity> createState() => _MentorActivityState();
}

class _MentorActivityState extends State<MentorActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.home,
        title: "Activity",
        onPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
