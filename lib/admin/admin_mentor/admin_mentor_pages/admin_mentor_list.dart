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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  mentorListCard(
                    mentorId: "MA0101",
                    mentorName: "Mr.Tharun Kiruthik",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AdminMentorDetails(),
                          ));
                    },
                  ),
                  mentorListCard(
                    mentorId: "MA0101",
                    mentorName: "Mr.Tharun Kiruthik",
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  mentorListCard(
                    mentorId: "MA0101",
                    mentorName: "Mr.Tharun Kiruthik",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AdminMentorDetails(),
                          ));
                    },
                  ),
                  mentorListCard(
                    mentorId: "MA0101",
                    mentorName: "Mr.Tharun Kiruthik",
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  mentorListCard(
                    mentorId: "MA0101",
                    mentorName: "Mr.Tharun Kiruthik",
                    onPressed: () {},
                  ),
                  mentorListCard(
                    mentorId: "MA0101",
                    mentorName: "Mr.Tharun Kiruthik",
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: customFloatingActionButton(
          onPressed: () {},
        ));
  }

  Widget mentorListCard({
    required String mentorName, // Mentor's name
    required String mentorId, // Mentor's ID
    required VoidCallback onPressed, // Callback for the button press
    Color backgroundColor =
        Colors.white, // Background color for the container (default is white)
    double borderRadius =
        10.0, // Border radius for the container (default is 10)
  }) {
    return Container(
      height: 220,
      width: 180,
      decoration: BoxDecoration(
        color: backgroundColor, // Background color
        borderRadius: BorderRadius.circular(borderRadius), // Border radius
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
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: onPressed,
            child: customButton(
              text: "View",
              onPressed: onPressed,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
            ),
          ),
        ],
      ),
    );
  }
}

class AdminMentorDetails extends StatefulWidget {
  const AdminMentorDetails({super.key});

  @override
  State<AdminMentorDetails> createState() => _AdminMentorDetailsState();
}

class _AdminMentorDetailsState extends State<AdminMentorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
          icon: Icons.arrow_back,
          title: "Mentor Details",
          onPress: () { Navigator.pop(context);},),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              mentorStatusCard(),
              mentorInfoCard(),
            ],
          ),
        ],
      ),
      floatingActionButton: customFloatingActionButton(onPressed: () {
        
      },),
    );
  }

  Widget mentorInfoCard() {
    return SizedBox(
      height: 100,
      width: 350,
      child: Card(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Subject: ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Maths,Social",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ]),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Issues: ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "01",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Mentor For: ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Grade 5",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ]),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Handling: ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Class 1,5,7",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget mentorStatusCard() {
    return SizedBox(
      height: 170,
      width: 350,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        // backgroundImage: NetworkImage(avatarUrl),  // Use an image URL
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name: Mr.Tharun",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Mentor ID: MA10101",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  mentorAttendanceWidget(
                      icon: Icons.time_to_leave,
                      iconBackgroundColor: Colors.green,
                      title: "Total",
                      value: "56"),
                  SizedBox(
                    width: 2,
                  ),
                  mentorAttendanceWidget(
                      icon: Icons.lock_clock,
                      iconBackgroundColor: Colors.orange,
                      title: "Present",
                      value: "53"),
                  SizedBox(
                    width: 2,
                  ),
                  mentorAttendanceWidget(
                      icon: Icons.exit_to_app,
                      iconBackgroundColor: Colors.red,
                      title: "Leave",
                      value: "3"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget mentorAttendanceWidget({
    required IconData icon, // Icon for the widget
    required Color iconBackgroundColor, // Background color of the icon
    required String title, // Title text (e.g., "Total")
    required String value, // Value text (e.g., "56")
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Icon with background color
        Container(
          height: 43,
          width: 43,
          decoration: BoxDecoration(
              color: iconBackgroundColor,
              borderRadius: BorderRadius.circular(5)),
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(width: 10), // Space between icon and text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
