import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';


class MentorRequest extends StatefulWidget {
  const MentorRequest({super.key});

  @override
  State<MentorRequest> createState() => _MentorRequestState();
}

class _MentorRequestState extends State<MentorRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(icon: Icons.arrow_back, title: "Requests", onPress: () {
        Navigator.pop(context);
      },),
    );
  }
}