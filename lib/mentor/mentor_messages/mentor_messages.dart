import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class MentorMessages extends StatefulWidget {
  const MentorMessages({super.key});

  @override
  State<MentorMessages> createState() => _MentorMessagesState();
}

class _MentorMessagesState extends State<MentorMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.home,
        title: "Message",
        onPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
