import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminMentorMapping extends StatefulWidget {
  const AdminMentorMapping({super.key});

  @override
  State<AdminMentorMapping> createState() => _AdminMentorMappingState();
}

class _AdminMentorMappingState extends State<AdminMentorMapping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text("Mentor Mapping"),
      ),
      body: Column(
        children: [
          searchTextField(hintText: "Search"),
  
        ],
      ),
    );
  }



}
