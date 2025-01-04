import 'package:baps_school_app/Widgets/widgets.dart'; // Assuming you have your textField widget here
import 'package:baps_school_app/co-ordinators/CoOrdinatorHome.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false; // To track checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Padding around the entire body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70, // space above the text
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Left padding
              child: Text(
                "Hi!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5, // space between texts
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Left padding
              child: Text(
                "Login to continue",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            textField(hintText: "Email"),
            SizedBox(height: 10),
            textField(hintText: "Password", isPassword: true),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false; // Update the checkbox state
                    });
                  },
                ),
                Flexible(
                  child: Text(
                    "I agree to the privacy policy",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between the checkbox and the button
            Center(
              child: customButton(
                  text: "Login",
                  onPressed: _isChecked
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CoOrdinatorHome()), // Example
                          );
                        }
                      : null,
                  backgroundColor: _isChecked ? Colors.blue : Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center "OR" text
              children: [
                Expanded(
                  child: Divider(
                    height: 1, // Set the thickness of the divider line
                    color: Colors.grey, // Set the color of the divider
                    indent: 20, // Space before the divider
                    endIndent: 20, // Space after the divider
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("OR"),
                ),
                Expanded(
                  child: Divider(
                    height: 1, // Set the thickness of the divider line
                    color: Colors.grey, // Set the color of the divider
                    indent: 20, // Space before the divider
                    endIndent: 20, // Space after the divider
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Login with google",
              style: TextStyle(fontSize: 16),
            )),
            SizedBox(height: 10,),
            Center(
              child: SignInButton(
                Buttons.googleDark,
                text: "Continue with Google",
                onPressed: () {
                  // Implement your Google Sign-In logic here
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
