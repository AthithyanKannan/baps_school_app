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
                height: 200,
              ),
              Text(
                "BIT SCHOOLS",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(74, 94, 109, 1)),
              ),
              SizedBox(
                height: 30,
              ),
              // Image.asset(
              //   'assets/logo.png',
              //   height: 200,
              //   width: 170,
              // ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Hello !',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome back! Please log in ",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Text(
                "to continue guiding your students",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),))
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(buttonColor),
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 85, vertical: 12)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                ),
                child: Text("LOGIN",
                    style: TextStyle(color: Colors.white, letterSpacing: 1)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
