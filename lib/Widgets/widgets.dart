import 'package:baps_school_app/colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

Widget textField({
  required String hintText,
  bool isPassword = false,
  TextInputType keyboardType = TextInputType.text,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 20), // Reduced vertical padding
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

Widget searchTextField({
  required String hintText,
  TextEditingController?
      controller, // Optional, if you want to handle text input
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
    child: TextField(
      controller: controller, // Optional, if you want to capture input
      style: TextStyle(fontSize: 14),
      decoration: InputDecoration(
        hintText: hintText, // Placeholder text
        hintStyle: TextStyle(fontSize: 14), // Reduced hint font size
        filled: true,
        fillColor:
            const Color.fromRGBO(238, 239, 249, 1), // Light grey background
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), // Slightly rounded corners
          borderSide: BorderSide.none, // Remove the default border
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 12.0), // Reduced padding
        prefixIcon: Icon(
          Icons.search, // Search icon on the left
          color: Colors.grey,
        ),
      ),
    ),
  );
}

Widget customRoundedIconButton({
  required IconData icon,
  required Color backgroundColor,
  required Color iconColor,
  required VoidCallback onPressed,
  double iconSize = 20,
  double borderRadius = 10.0,
  double padding = 8.0,
}) {
  return InkWell(
    onTap: onPressed,
    borderRadius: BorderRadius.circular(borderRadius),
    child: Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: EdgeInsets.all(padding),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    ),
  );
}


Widget customDropdown({
    required List<String> options, // Dropdown options
    required String hintText, // Hint text for the dropdown
    required String? selectedValue, // Currently selected value
    required ValueChanged<String?>
        onChanged, // Callback for when an item is selected
  }) {
    return Container(
      height: 45,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Text(
            hintText,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          items: options
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: onChanged,
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: Color.fromRGBO(247, 248, 250, 1),
            ),
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
            iconSize: 24,
          ),
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
              color: Color.fromRGBO(247, 248, 250, 1),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
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
  double letterSpacing = 0.0,
  double fontSize = 12

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
      style: TextStyle(color: textColor, letterSpacing: letterSpacing,fontSize: fontSize),
    ),
  );
}

Widget MenuCard({
  required ImageProvider image,
  required String text,
  Color iconColor = Colors.red,
}) {
  return SizedBox(
    height: 164,
    width: 164,
    child: Card(
      elevation: 0,
      color: Color.fromRGBO(235, 238, 255, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: image,
              height: 48.0,
              width: 48.0,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 8.0),
            Text(
              text,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
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

Widget ScheduleCard({
  required String title,
  required Color color,
  required ImageProvider image,
  required Color textColor, // Added textColor as a required parameter
}) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.withOpacity(0.2),
      //     offset: Offset(2, 2),
      //     blurRadius: 3,
      //   ),
      // ],
      borderRadius: BorderRadius.circular(12),
    ),
    height: 80,
    width: 350,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 25,
        ),
        Image(
          image: image,
          height: 35, // Match the previous icon size
          width: 35, // Match the previous icon size
          fit: BoxFit.contain,
        ),
        SizedBox(
          width: 25,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor, // Apply the required text color
          ),
        ),
      ],
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

PreferredSizeWidget CustomAppBar({
  required IconData icon, // Icon to display in the leading section
  required String title, // Title text of the AppBar
  required VoidCallback onPress, // Callback function for the icon press
}) {
  return AppBar(
    backgroundColor:
        backgroundColor, // Default background color if none is provided
    leading: GestureDetector(
      onTap: () {
        onPress();
      },
      child: Icon(
        icon,
        weight: 2,
      ),
    ),
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
    ),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.0), // Height of the border
      child: Container(
        color: Colors.black, // Color of the border line
        height: 0.2, // Height of the border
      ),
    ),
  );
}

Widget customFloatingActionButton({
  required VoidCallback onPressed, // Callback for when the button is pressed
}) {
  return FloatingActionButton(
    heroTag: null,
      shape: CircleBorder(),
      elevation: 0,
      onPressed: onPressed,
      backgroundColor: Color.fromRGBO(174, 188, 255, 1),
      child: Icon(
        Icons.home,
        color: Color.fromRGBO(12, 54, 255, 1),
      ));
}

Widget enrollmentForm() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 570,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
                blurStyle: BlurStyle.outer,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height:
                      60), // Add some space to make room for the CircleAvatar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("Name"),
              ),
              textField(hintText: "Enter name"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("DOB"),
              ),
              textField(hintText: "Enter DOB"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("Gender"),
              ),
              textField(hintText: "Enter gender"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("Grade"),
              ),
              textField(hintText: "Enter grade"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("Mobile number"),
              ),
              textField(hintText: "Enter number"),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customButton(
                    onPressed: () {},
                    text: "Cancel",
                    borderRadius: BorderRadius.circular(30),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    backgroundColor: Color.fromRGBO(235, 238, 255, 1),
                    textColor: Colors.blue,
                  ),
                  customButton(
                    onPressed: () {},
                    text: "Confirm",
                    borderRadius: BorderRadius.circular(30),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    backgroundColor: Color.fromRGBO(53, 87, 255, 1),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -30, // Adjust position of the avatar
          left: 120, // Center the CircleAvatar horizontally
          child: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 241, 235, 235),
            radius: 40, // Adjust the size of the avatar
            child: Icon(
              Icons.person,
              color: Colors.black,
            ), // Replace with actual profile image URL
          ),
        ),
      ],
    ),
  );
}

Widget mentorCard({
  required String name,
  required String role,
  required String about,
  required String mentor_name,
  required String date,
  required String imagePath,
  required VoidCallback onCall,
  required VoidCallback onEmail,
}) {
  return Card(
    color: Colors.white,
    margin: EdgeInsets.all(16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 4,
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  // backgroundImage: AssetImage(
                  //     imagePath), // Replace with actual image asset or network image
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      role,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              "Reason",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 248, 250, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  about,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  "Mentor : ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  mentor_name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: onCall,
                  icon: Icon(Icons.phone, color: Colors.blue),
                ),
                IconButton(
                  onPressed: onEmail,
                  icon: Icon(Icons.email, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
