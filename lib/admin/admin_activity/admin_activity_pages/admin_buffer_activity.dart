import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminBufferActivity extends StatefulWidget {
  const AdminBufferActivity({super.key});

  @override
  State<AdminBufferActivity> createState() => _AdminBufferActivityState();
}

class _AdminBufferActivityState extends State<AdminBufferActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        title: "Buffer Activity",
        onPress: () {
          // Navigator.pop(context);
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              adminBufferActivityCard(),
              SizedBox(
                height: 10,
              ),
              adminBufferActivityCard(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
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

  Widget adminBufferActivityCard() {
    return SizedBox(
      height: 180,
      width: 360,
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
                    "End in : 30min",
                    style: TextStyle(color: Colors.red, fontSize: 14),
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
