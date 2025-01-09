import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class MentorLeaveApproval extends StatefulWidget {
  const MentorLeaveApproval({super.key});

  @override
  State<MentorLeaveApproval> createState() => _MentorLeaveApprovalState();
}

class _MentorLeaveApprovalState extends State<MentorLeaveApproval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.home,
        title: "Leave Approval",
        onPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
