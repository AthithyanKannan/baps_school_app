import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminSurvey extends StatefulWidget {
  const AdminSurvey({super.key});

  @override
  State<AdminSurvey> createState() => _AdminSurveyState();
}

class _AdminSurveyState extends State<AdminSurvey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(icon: Icons.arrow_back, title: "Survey", onPress: () {
        Navigator.pop(context);
      },),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(child: adminSurveyCard())
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => AdminAddBuffer(),
              //     ));
            },
            shape: CircleBorder(),
            elevation: 0,
            backgroundColor: Color.fromRGBO(53, 87, 255, 1),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          customFloatingActionButton(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
  Widget adminSurveyCard() {
    return SizedBox(
      height: 195,
      width: 350,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                    "Games",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    "Active",
                    style: TextStyle(color: Colors.green, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Grade 6",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    "Ends in : 30min",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Section - A,B",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: customButton(
                    text: "End Activity now",
                    onPressed: () {},
                    backgroundColor: Color.fromRGBO(53, 87, 255, 1),
                    borderRadius: BorderRadius.circular(30),
                    textColor: Colors.white,
                    fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}