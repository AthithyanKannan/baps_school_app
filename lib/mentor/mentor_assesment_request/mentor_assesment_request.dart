import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class MentorAssesmentRequest extends StatefulWidget {
  const MentorAssesmentRequest({super.key});

  @override
  State<MentorAssesmentRequest> createState() => _MentorAssesmentRequestState();
}

class _MentorAssesmentRequestState extends State<MentorAssesmentRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        title: "Assesment Request",
        onPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
