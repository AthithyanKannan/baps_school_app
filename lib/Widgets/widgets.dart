import 'package:flutter/material.dart';

Widget textField({
  required String hintText,
  bool isPassword = false,
  TextInputType keyboardType = TextInputType.text,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 30), // Reduced vertical padding
    child: TextField(
      obscureText: isPassword, // Handle password visibility
      keyboardType: keyboardType, // Handle keyboard type
      style: TextStyle(fontSize: 14), // Reduced font size
      decoration: InputDecoration(
        hintText: hintText, // Placeholder text
        hintStyle: TextStyle(fontSize: 14), // Reduced hint font size
        filled: true,
        fillColor: const Color.fromARGB(
            255, 241, 239, 239), // Light grey background color
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(8), // Slightly smaller border radius
          borderSide: BorderSide.none, // Remove default border
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 12.0), // Reduced padding
      ),
    ),
  );
}

Widget customButton({
  required String text,
  required VoidCallback? onPressed,
  Color backgroundColor = Colors.blue,
  Color textColor = Colors.white,
  EdgeInsetsGeometry padding =
      const EdgeInsets.symmetric(horizontal: 85, vertical: 12),
  BorderRadiusGeometry borderRadius =
      const BorderRadius.all(Radius.circular(8)),
  double letterSpacing = 1.0,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(backgroundColor),
      padding: WidgetStatePropertyAll(padding),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
    ),
    child: Text(
      text,
      style: TextStyle(color: textColor, letterSpacing: letterSpacing),
    ),
  );
}

Widget MenuCard(
    {required IconData icon,
    required String text,
    Color iconColor = Colors.red}) {
  return Card(
    color: Color.fromRGBO(235, 238, 255, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7.0),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 48.0,
            color: iconColor,
          ),
          SizedBox(height: 8.0),
          Text(
            text,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                letterSpacing: 1),
          ),
        ],
      ),
    ),
  );
}

Widget SubjectCard({required String title, required Color color}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Container(
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(2, 2),
            blurRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      height: 70,
      width: 320,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
    ),
  );
}

Widget ScheduleCard(
    {required String title, required Color color, required IconData icon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Container(
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(2, 2),
            blurRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      height: 70,
      width: 320,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 25,
          ),
          Icon(
            icon,
            size: 26,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    ),
  );
}

class TimelineList extends StatelessWidget {
  const TimelineList({super.key});

  // Function to generate dates for the timeline
  List<String> getDates() {
    return [
      "9:00 AM - 9:40 AM",
      "9:40 AM - 10:30 AM",
      "11:00 AM - 12:00 PM",
      "1:00 PM - 1:50 PM",
      "1:50 PM - 2:40 PM",
      "3:10 PM - 4:00 PM",
    ];
  }

  // Function to generate subjects for the timeline
  List<String> getSubjects() {
    return [
      "Social Science",
      "Mathematics",
      "Physics",
      "Chemistry",
      "Biology",
      "History",
    ];
  }

  @override
  Widget build(BuildContext context) {
    final dates = getDates();
    final subjects = getSubjects();

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: dates.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(width: 10),
              // Date widget
              Text(
                dates[index],
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              if (dates[index] == "9:40 AM - 10:30 AM" ||
                  dates[index] == "11:00 AM - 12:00 PM")
                const SizedBox(width: 30),
              if (dates[index] == "9:00 AM - 9:40 AM" ||
                  dates[index] == "1:00 PM - 1:50 PM" ||
                  dates[index] == "1:50 PM - 2:40 PM" ||
                  dates[index] == "3:10 PM - 4:00 PM")
                const SizedBox(width: 45),
              // Timeline connector and subject details

              Column(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  if (index < dates.length - 1)
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.grey.shade300,
                    ),
                ],
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Subject
                    Row(
                      children: [
                        const Icon(Icons.book, color: Colors.blue, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          subjects[index],
                          style: const TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    // Faculty
                    Row(
                      children: const [
                        Icon(Icons.person, color: Colors.blue, size: 20),
                        SizedBox(width: 8),
                        Text(
                          'Faculty',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
