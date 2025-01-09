import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:baps_school_app/login.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "BIT SCHOOLS",
                style: TextStyle(
                    fontSize: 37,
                    fontFamily: "DMSans-Bold",
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(74, 94, 109, 1)),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/login.png',
              ),
              Text(
                'Hello !',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome back! Please log in ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "to continue guiding your students",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              customButton(
                  text: "LOGIN",
                  fontSize: 16,
                  backgroundColor: Color.fromRGBO(40, 66, 196, 1),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  })
            ],
          ),
        ],
      ),
    );
  }
}
