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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchTextField(hintText: "Search"),
            SizedBox(
              height: 10,
            ),
            gradeSelection(
              grade: "Grade 1",
              onAddMentor: () {},
            ),
            mentorMapping(
              avatarUrl: "",
              mentorId: "20244VIO23",
              mentorName: "Tejaswin D",
              onAddMentor: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mapping(),
                    ));
              },
            ),
            mentorMapping(
              avatarUrl: "",
              mentorId: "20244VIO23",
              mentorName: "Tejaswin D",
              onAddMentor: () {},
            ),
            gradeSelection(
              grade: "Grade 2",
              onAddMentor: () {},
            ),
            mentorMapping(
              avatarUrl: "",
              mentorId: "20244VIO23",
              mentorName: "Tejaswin D",
              onAddMentor: () {},
            ),
            mentorMapping(
              avatarUrl: "",
              mentorId: "20244VIO23",
              mentorName: "Tejaswin D",
              onAddMentor: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
    );
  }

  Widget gradeSelection({
    required String grade, // The grade name (e.g., "Grade 1")
    required VoidCallback
        onAddMentor, // Callback when "+ Add Mentor" is pressed
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          grade,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onAddMentor,
          child: Text(
            "+ Add Mentor",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }

  Widget mentorMapping({
    required String mentorName, // Mentor's name
    required String mentorId, // Mentor's ID (e.g., "2024VI023")
    required VoidCallback onAddMentor, // Callback for add mentor button
    required String avatarUrl, // URL or placeholder for avatar image
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 100,
        width: 350,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          mentorName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          mentorId,
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: onAddMentor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Mapping extends StatefulWidget {
  const Mapping({super.key});

  @override
  State<Mapping> createState() => _MappingState();
}

class _MappingState extends State<Mapping> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mentor Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 100,
                width: 350,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  "Prakesh Raj",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "2024VI023",
                                  style: TextStyle(fontWeight: FontWeight.w100),
                                ),
                                Text(
                                  "Grade 1-A",
                                  style: TextStyle(fontWeight: FontWeight.w100),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: TextButton(
                              onPressed: () {}, child: Icon(Icons.add)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
              child: Text(
                "Student List Grade 1",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            mentorMapping(
                mentorName: "Athithyan",
                mentorId: "2024VI023",
                onAddMentor: () {},
                avatarUrl: ""),
            mentorMapping(
                mentorName: "Athithyan",
                mentorId: "2024VI023",
                onAddMentor: () {},
                avatarUrl: ""),
            mentorMapping(
                mentorName: "Athithyan",
                mentorId: "2024VI023",
                onAddMentor: () {},
                avatarUrl: ""),
            mentorMapping(
                mentorName: "Athithyan",
                mentorId: "2024VI023",
                onAddMentor: () {},
                avatarUrl: ""),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.home),
        ));
  }

  Widget mentorMapping({
    required String mentorName, // Mentor's name
    required String mentorId, // Mentor's ID (e.g., "2024VI023")
    required VoidCallback onAddMentor, // Callback for add mentor button
    required String avatarUrl, // URL or placeholder for avatar image
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 100,
        width: 350,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          mentorName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          mentorId,
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: ElevatedButton(
                    child: Text("Assign"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
