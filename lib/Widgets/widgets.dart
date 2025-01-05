import 'package:baps_school_app/colors.dart';
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
        fillColor: const Color.fromARGB(255, 241, 239, 239), // Light grey background color
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





Widget MenuCard({required IconData icon, required String text,Color iconColor = Colors.red}) {
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
            color: Colors.black54, // Apply the calculated dark color to the text
          ),
        ),
      ),
    ),
  );
}
Widget ScheduleCard({required String title, required Color color,required IconData icon}) {
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
          SizedBox(width: 25,),
          Icon(icon,size: 26,),
          SizedBox(width: 25,),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54, // Apply the calculated dark color to the text
            ),
          ),
        ],
      ),
    ),
  );
}


