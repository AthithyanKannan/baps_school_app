import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminApprovals extends StatefulWidget {
  const AdminApprovals({super.key});

  @override
  State<AdminApprovals> createState() => _AdminApprovalsState();
}

class _AdminApprovalsState extends State<AdminApprovals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        title: "Approvals",
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            AdminApprovalCard(
                mentorName: "John Philips",
                mentorId: "22 MA010",
                onAddMentor: () {},
                avatarUrl: "assets/admin_student_profile_icon.png"),
            SizedBox(
              height: 10,
            ),
            AdminApprovalCard(
                mentorName: "John Philips",
                mentorId: "22 MA010",
                onAddMentor: () {},
                avatarUrl: "assets/admin_student_profile_icon.png"),
          ],
        ),
      ),
      floatingActionButton: customFloatingActionButton(
        onPressed: () {},
      ),
    );
  }

  Widget AdminApprovalCard({
    required String mentorName, // Mentor's name
    required String mentorId, // Mentor's ID (e.g., "2024VI023")
    required VoidCallback onAddMentor, // Callback for add mentor button
    required String avatarUrl, // URL or placeholder for avatar image
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 230,
        width: 350,
        child: Card(
          elevation: 0.1,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              AssetImage(avatarUrl), // Use an image URL
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mentorName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              mentorId,
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Text(
                        "22/12/24",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mathematics",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Grade VI-A", style: TextStyle(fontSize: 14)),
                SizedBox(
                  height: 5,
                ),
                Text("Completed Self-Assessment ",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(39, 174, 96, 1))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customButton(
                      text: "Reject",
                      borderRadius: BorderRadius.circular(30),
                      onPressed: () {},
                      padding:
                          EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                      backgroundColor: Color.fromRGBO(235, 238, 255, 1),
                      textColor: Color.fromRGBO(40, 66, 196, 1),
                      fontSize: 13,
                    ),
                    customButton(
                        text: "Accept",
                        borderRadius: BorderRadius.circular(30),
                        onPressed: () {},
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                        backgroundColor: Color.fromRGBO(40, 66, 196, 1),
                        textColor: Colors.white)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
