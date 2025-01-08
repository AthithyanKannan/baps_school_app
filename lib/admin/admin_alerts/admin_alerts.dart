import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/admin/admin_home.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminAlerts extends StatefulWidget {
  const AdminAlerts({super.key});

  @override
  State<AdminAlerts> createState() => _AdminAlertsState();
}

class _AdminAlertsState extends State<AdminAlerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
          icon: Icons.arrow_back,
          title: "Alerts",
          onPress: () {
            Navigator.pop(context);
          }),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              adminAlertCard(),
              SizedBox(
                height: 10,
              ),
              adminAlertCard(),
            ],
          ),
        ],
      ),
      floatingActionButton: customFloatingActionButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => AdminHome()),
            (Route<dynamic> route) => false,
          );
        },
      ),
    );
  }

  Widget adminAlertCard() {
    return SizedBox(
      height: 200,
      width: 360,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Prakesh Raj",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    "20/10/2024",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Science - Level 1",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 7,
              ),
              Text("Grade 1"),
              SizedBox(
                height: 7,
              ),
              Text(
                "Homework Not Evaluated",
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
              SizedBox(
                height: 7,
              ),
              Center(
                child: customButton(
                  fontSize: 14,
                  text: "Create Issue",
                  onPressed: () {},
                  backgroundColor: const Color.fromRGBO(32, 79, 220, 1),
                  padding: EdgeInsets.symmetric(horizontal: 100),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
