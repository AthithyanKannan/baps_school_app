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
            icon: Icons.arrow_back,
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
      height: 200,
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
          CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/admin_mentor_profile_icon.png"),),
          SizedBox(height: 10),
          Text(
            mentorName,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
          ),
          Text(mentorId,style: TextStyle(color: Colors.grey,fontSize: 10),),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: onPressed,
            child: customButton(
              text: "View",
              onPressed: onPressed,
              backgroundColor: Color.fromRGBO(45, 80, 253, 1),
              padding: EdgeInsets.only(bottom: 1,left: 35,top: 1,right: 35),
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
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 10,),
                mentorStatusCard(),
                mentorInfoCard(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: customFloatingActionButton(onPressed: () {
        
      },),
    );
  }

  Widget mentorInfoCard() {
    return SizedBox(
      height: 100,
      width: 370,
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
      height: 160,
      width: 370,
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
                        radius: 27,
                        backgroundImage: AssetImage("assets/admin_mentor_profile_icon.png"),  // Use an image URL
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name : Mr. Tharun",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                          ),
                          Text(
                            "Mentor ID: MA10101",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: IconButton(
                      icon: Icon(Icons.more_vert),
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
                    iconImage: AssetImage("assets/admin_total_icon.png"),
                      title: "Total",
                      value: "56"),
                  SizedBox(
                    width: 4,
                  ),
                                mentorAttendanceWidget(
                    iconImage: AssetImage("assets/admin_present_icon.png"),
                      title: "Present",
                      value: "53"),
                  SizedBox(
                    width: 4,
                  ),
                                  mentorAttendanceWidget(
                    iconImage: AssetImage("assets/admin_absent_icon.png"),
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
  required AssetImage iconImage, // AssetImage for the icon
  required String title, // Title text (e.g., "Total")
  required String value, // Value text (e.g., "56")
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // Container with rounded corners and image as the icon
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), // Border radius for rounded corners
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8), // Apply the same border radius to the image
          child: Image(
            image: iconImage, // Use AssetImage here
            fit: BoxFit.cover, // Ensure the image fits within the container
          ),
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
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
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
