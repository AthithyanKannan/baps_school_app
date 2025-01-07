import 'package:baps_school_app/Widgets/widgets.dart';
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
      appBar:
          CustomAppBar(icon: Icons.arrow_back, title: "Alerts", onPress: () {}),
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
        onPressed: () {},
      ),
    );
  }

  Widget adminAlertCard() {
    return SizedBox(
      height: 200,
      width: 370,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "20/10/2024",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("Science - Level 1"),
              SizedBox(
                height: 7,
              ),
              Text("Grade"),
              SizedBox(
                height: 7,
              ),
              Text(
                "Homework Not Evaluated",
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 7,
              ),
              Center(
                child: customButton(
                  text: "Create Issue",
                  onPressed: () {},
                  backgroundColor: const Color.fromARGB(255, 21, 111, 184),
                  padding: EdgeInsets.symmetric(horizontal: 120),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
