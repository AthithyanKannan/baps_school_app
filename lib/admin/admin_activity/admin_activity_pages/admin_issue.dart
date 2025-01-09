import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminIssue extends StatefulWidget {
  const AdminIssue({super.key});

  @override
  State<AdminIssue> createState() => _AdminIssueState();
}

class _AdminIssueState extends State<AdminIssue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        title: "Faulty issue log",
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            adminIssueCard(),
            SizedBox(
              height: 10,
            ),
            adminIssueCard(),
          ],
        ),
      ),
      floatingActionButton: customFloatingActionButton(
        onPressed: () {},
      ),
    );
  }

  Widget adminIssueCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 260,
        width: 350,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(247, 248, 250, 1),
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(
                              "assets/admin_mentor_profile_icon.png"), // Use an image URL
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Faculty",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              "2024VI023",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  color: Colors.grey,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        child: Text(
                          "29/10/2023",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Text(
                    "Reason",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    width: 320,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 248, 250, 1),
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.grey.shade400
                        // color: Color.fromRGBO(231, 231, 231, 1))
                      ),
                    ),
          
                    child: Text(
                      "Student is saying that he came along with parents to school, and he is late to school because of traffic.",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text(
                        "Faculty",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "assets/admin_calls.png",
                            height: 30,
                          ),
                        ),
                        Image.asset(
                          "assets/admin_messages.png",
                          height: 30,
                        )
                      ],
                    )
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
