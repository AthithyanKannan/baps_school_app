import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

import '../../Widgets/widgets.dart';

class MentorHomework extends StatefulWidget {
  const MentorHomework({super.key});

  @override
  State<MentorHomework> createState() => _MentorHomeworkState();
}

class _MentorHomeworkState extends State<MentorHomework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: CustomAppBar(
          icon: Icons.home,
          title: "Homework",
          onPress: () {
            Navigator.pop(context);
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: Text(
                  "20/04/2024",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              MentorHomeworkCard(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: Text(
                  "22/04/2024",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              MentorHomeworkCard(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            heroTag: null,
            shape: CircleBorder(),
            elevation: 0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const mentorAddHomeWork(),
                ),
              );
            },
            backgroundColor: Color.fromRGBO(76, 101, 221, 1),
            child: Icon(
              Icons.add,
              color: Colors.white,
            )));
  }

  Widget MentorHomeworkCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
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
                Column(
                  children: [
                    MentorHomeworkTimeline(),
                    SizedBox(
                      height: 5,
                    ),
                    MentorHomeworkTimeline(),
                    SizedBox(
                      height: 5,
                    ),
                    MentorHomeworkTimeline(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MentorHomeworkTimeline() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Timeline Indicator and Line
        Column(
          children: [
            SizedBox(
              height: 4,
            ),
            Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(12, 54, 255, 1),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 2,
              height: 100,
              color: const Color.fromRGBO(121, 145, 164, 1),
            ),
          ],
        ),
        const SizedBox(width: 10), // Space between timeline and content
        // Content Section
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Grade 1",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "mentor_assets/mentor_homework_book.png",
                        scale: 3,
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          "Science-Level 1",
                          style: TextStyle(fontSize: 14),
                          overflow:
                              TextOverflow.ellipsis, // Prevents text overflow
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Evaluation logic here
                        },
                        child: const Text(
                          "Evaluate",
                          style:
                              TextStyle(color: Color.fromRGBO(53, 87, 255, 1)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "mentor_assets/mentor_homework_book.png",
                        scale: 3,
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          "Science-Level 1",
                          style: TextStyle(fontSize: 14),
                          overflow:
                              TextOverflow.ellipsis, // Prevents text overflow
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Evaluation logic here
                        },
                        child: const Text(
                          "Evaluate",
                          style:
                              TextStyle(color: Color.fromRGBO(53, 87, 255, 1)),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class mentorAddHomeWork extends StatefulWidget {
  const mentorAddHomeWork({super.key});

  @override
  State<mentorAddHomeWork> createState() => _mentorAddHomeWorkState();
}

class _mentorAddHomeWorkState extends State<mentorAddHomeWork> {
  String? selectedGrade; // To hold the selected dropdown value

  String? selectedSubject; // To hold the selected dropdown value
  String? selectedLevels; // To hold the selected dropdown value

  // List of Grades
  final List<String> grades =
      List.generate(12, (index) => 'Grade ${index + 1}');

// List of Sections
  final List<String> subjects = ['Tamil', 'English', 'Maths','Science'];

// List of Activities
  final List<String> levels = ['Level 1', 'Level 2', 'Level 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        title: "Homework",
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(child: mentorAddHomeworkCard())
          ],
        ),
      ),
    );
  }

  Widget mentorAddHomeworkCard() {
    return SizedBox(
        width: 350,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 4),
                  child: Text(
                    "Date",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                textField(hintText: "Enter Date"),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Grade",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                  child: Text("Subject",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: customDropdown(
                      selectedValue: selectedSubject,
                      options: subjects,
                      hintText: "Select Subject",
                      onChanged: (value) {
                        setState(() {
                          selectedSubject = value;
                        });
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("Level",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: customDropdown(
                      selectedValue: selectedLevels,
                      options: levels,
                      hintText: "Select Activity",
                      onChanged: (value) {
                        setState(() {
                          selectedLevels = value;
                        });
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("Lecture Material",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: customButton(
                      text: "Add Homework",
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(30),
                      letterSpacing: 0,
                      backgroundColor: Color.fromRGBO(53, 87, 255, 1),
                      padding: EdgeInsets.symmetric(horizontal: 100)),
                )
              ],
            ),
          ),
        ));
  }
}
