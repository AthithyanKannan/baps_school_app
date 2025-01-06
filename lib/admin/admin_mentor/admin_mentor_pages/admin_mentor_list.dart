import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminMentorList extends StatefulWidget {
  const AdminMentorList({super.key});

  @override
  State<AdminMentorList> createState() => _AdminMentorListState();
}

class _AdminMentorListState extends State<AdminMentorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
          icon: Icons.home,
          title: "Mentor List",
          onPress: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            searchTextField(hintText: "Search"),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                mentorListCard(mentorId: "MA0101",mentorName: "Mr.Tharun Kiruthik",onPressed: () {
                  
                },),
                mentorListCard(mentorId: "MA0101",mentorName: "Mr.Tharun Kiruthik",onPressed: () {
                  
                },),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                mentorListCard(mentorId: "MA0101",mentorName: "Mr.Tharun Kiruthik",onPressed: () {
                  
                },),
                mentorListCard(mentorId: "MA0101",mentorName: "Mr.Tharun Kiruthik",onPressed: () {
                  
                },),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                mentorListCard(mentorId: "MA0101",mentorName: "Mr.Tharun Kiruthik",onPressed: () {
                  
                },),
                mentorListCard(mentorId: "MA0101",mentorName: "Mr.Tharun Kiruthik",onPressed: () {
                  
                },),
              ],
            ),
            ],
        ),
      ),

      floatingActionButton:customFloatingActionButton(onPressed: () {
        
      },)
    );
  }
Widget mentorListCard({
  required String mentorName,  // Mentor's name
  required String mentorId,    // Mentor's ID
  required VoidCallback onPressed,  // Callback for the button press
  Color backgroundColor = Colors.white,  // Background color for the container (default is white)
  double borderRadius = 10.0,  // Border radius for the container (default is 10)
}) {
  return Container(
    height: 220,
    width: 180,
    decoration: BoxDecoration(
      color: backgroundColor,  // Background color
      borderRadius: BorderRadius.circular(borderRadius),  // Border radius
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 3), // Shadow direction
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(radius: 40),
        SizedBox(height: 10),
        Text(
          mentorName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(mentorId),
        SizedBox(height: 10,),
        customButton(
          text: "View",
          onPressed: onPressed,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
        ),
      ],
    ),
  );
}

}
