import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class MentorBufferActivity extends StatefulWidget {
  const MentorBufferActivity({super.key});

  @override
  State<MentorBufferActivity> createState() => _MentorBufferActivityState();
}

class _MentorBufferActivityState extends State<MentorBufferActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        title: "Buffer Activity",
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              MentorBufferActivityCard(),
              SizedBox(
                height: 10,
              ),
              MentorBufferActivityCard(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MentorAddBuffer(),
                  ));
            },
            shape: CircleBorder(),
            elevation: 0,
            backgroundColor: Color.fromRGBO(53, 87, 255, 1),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          customFloatingActionButton(
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget MentorBufferActivityCard() {
    return SizedBox(
      width: 350,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Games",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    "Active",
                    style: TextStyle(color: Colors.green, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Grade 6",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    "Ends in : 30min",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Section - A,B",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: customButton(
                    text: "End Activity now",
                    onPressed: () {},
                    backgroundColor: Color.fromRGBO(53, 87, 255, 1),
                    borderRadius: BorderRadius.circular(30),
                    textColor: Colors.white,
                    fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MentorAddBuffer extends StatefulWidget {
  const MentorAddBuffer({super.key});

  @override
  State<MentorAddBuffer> createState() => _MentorAddBufferState();
}

class _MentorAddBufferState extends State<MentorAddBuffer> {
  String? selectedGrade; // To hold the selected dropdown value
  String? selectedSections; // To hold the selected dropdown value
  String? selectedActivities; // To hold the selected dropdown value

// List of Grades
  final List<String> grades =
      List.generate(12, (index) => 'Grade ${index + 1}');

// List of Sections
  final List<String> sections = ['Section A', 'Section B', 'Section C'];

// List of Activities
  final List<String> activities = ['Games', 'Assessment', 'Free Period'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Replace with your backgroundColor variable
      appBar: CustomAppBar(
          icon: Icons.arrow_back,
          onPress: () {
            Navigator.pop(context);
          },
          title: "Buffer Activity"),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/clock.gif",
              height: 150,
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 340,
                width: 370,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Grade",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: customDropdown(
                              selectedValue: selectedGrade,
                              options: grades,
                              hintText: "Select Grade",
                              onChanged: (value) {
                                setState(() {
                                  selectedGrade = value;
                                });
                              }),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("Sections",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: customDropdown(
                              selectedValue: selectedSections,
                              options: sections,
                              hintText: "Select Sections",
                              onChanged: (value) {
                                setState(() {
                                  selectedSections = value;
                                });
                              }),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("Activity",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                        ),
                        Center(
                          child: customDropdown(
                              selectedValue: selectedActivities,
                              options: activities,
                              hintText: "Select Activity",
                              onChanged: (value) {
                                setState(() {
                                  selectedActivities = value;
                                });
                              }),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("Time",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: customButton(
                              text: "Conform",
                              onPressed: () {},
                              borderRadius: BorderRadius.circular(30),
                              letterSpacing: 0,
                              backgroundColor: Color.fromRGBO(53, 87, 255, 1),
                              padding: EdgeInsets.symmetric(horizontal: 100)),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      )),
      floatingActionButton: customFloatingActionButton(
        onPressed: () {},
      ),
    );
  }

  
}
