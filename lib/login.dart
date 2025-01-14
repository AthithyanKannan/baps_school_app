import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/admin/admin_home.dart';
import 'package:baps_school_app/colors.dart';
import 'package:baps_school_app/mentor/mentor_home.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Hi! ",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Login to continue",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Image.asset(
                  'assets/loginImage.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(height: 20,),
              textField(hintText: "Email",padding: EdgeInsets.symmetric(horizontal: 10)),
              SizedBox(height: 20),
              textField(hintText: "Password", isPassword: true,padding: EdgeInsets.symmetric(horizontal: 10)),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                  ),
                  Flexible(
                    child: Text(
                      "I agree to the privacy policy",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: customButton(
                    text: "LOGIN",
                    fontSize: 14,
                    onPressed: _isChecked
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MentorHome()),
                            );
                          }
                        : null,
                    backgroundColor: _isChecked ? Color.fromRGBO(40, 66, 196, 1) : Colors.grey),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      height: 1,
                      color: Colors.grey,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("OR",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
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
                height: 20,
              ),
              Center(
                  child: Text(
                "Login with google",
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SignInButton(
                  Buttons.google,
                  elevation: 1,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  text: "Continue with Google",
                  onPressed: () {
                    // Implement your Google Sign-In logic here
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
