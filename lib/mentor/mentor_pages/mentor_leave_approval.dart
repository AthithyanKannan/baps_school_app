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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: searchTextField(hintText: "Search")),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorLeaveApprovalHistory(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.history,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            MentorLeaveApprovalCard(
                mentorName: "Athithyan",
                mentorId: "7376211SE108",
                onAddMentor: () {},
                avatarUrl: "assets/admin_student_profile_icon.png"),
            SizedBox(height: 10,),
            MentorLeaveApprovalCard(
                mentorName: "Athithyan",
                mentorId: "7376211SE108",
                onAddMentor: () {},
                avatarUrl: "assets/admin_student_profile_icon.png"),
          ],
        ),
      ),
    );
  }

  Widget MentorLeaveApprovalCard({
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
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "20/08/24 - 23/08/24",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Sick Leave", style: TextStyle(fontSize: 12)),
                SizedBox(
                  height: 5,
                ),
                Text("Pending",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(231, 160, 94, 1))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customButton(
                      text: "Reject",
                      borderRadius: BorderRadius.circular(7),
                      onPressed: () {},
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      backgroundColor: Color.fromRGBO(207, 84, 79, 1),
                      textColor: Colors.white,
                      fontSize: 13,
                    ),
                    customButton(
                        text: "Accept",
                        borderRadius: BorderRadius.circular(7),
                        onPressed: () {},
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        backgroundColor: Color.fromRGBO(108, 160, 68, 1),
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

class MentorLeaveApprovalHistory extends StatefulWidget {
  const MentorLeaveApprovalHistory({super.key});

  @override
  State<MentorLeaveApprovalHistory> createState() =>
      _MentorLeaveApprovalHistoryState();
}

class _MentorLeaveApprovalHistoryState
    extends State<MentorLeaveApprovalHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        title: "Leave Approval",
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: searchTextField(hintText: "Search")),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.history, size: 30,color: Color.fromRGBO(75, 126, 202, 1),),
                )
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("12/08/2023",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            MentorLeaveApprovalHistoryCard(
              mentorName: "Athithyan",
              mentorId: "7376211SE108",
              onAddMentor: () {},
              avatarUrl: "assets/admin_student_profile_icon.png",
            ),
            SizedBox(height: 10,),
            MentorLeaveApprovalHistoryCard(
              mentorName: "Athithyan",
              mentorId: "7376211SE108",
              onAddMentor: () {},
              avatarUrl: "assets/admin_student_profile_icon.png",
            ),
          ],
        ),
      ),
    );
  }
  Widget MentorLeaveApprovalHistoryCard({
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
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "20/08/24 - 23/08/24",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Sick Leave", style: TextStyle(fontSize: 12)),
                SizedBox(
                  height: 5,
                ),
                Text("Pending",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(231, 160, 94, 1))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customButton(
                      text: "Reject",
                      borderRadius: BorderRadius.circular(7),
                      onPressed: () {},
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      backgroundColor: Color.fromRGBO(207, 84, 79, 1),
                      textColor: Colors.white,
                      fontSize: 13,
                    ),
                    customButton(
                        text: "Accept",
                        borderRadius: BorderRadius.circular(7),
                        onPressed: () {},
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        backgroundColor: Color.fromRGBO(108, 160, 68, 1),
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
