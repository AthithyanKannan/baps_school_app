import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class ScheduleContent extends StatefulWidget {
  const ScheduleContent({super.key});

  @override
  State<ScheduleContent> createState() => _ScheduleContentState();
}

class _ScheduleContentState extends State<ScheduleContent>
    with TickerProviderStateMixin {
  late TabController _gradeTabController;
  late TabController _dayTabController;

  @override
  void initState() {
    super.initState();
    _gradeTabController = TabController(length: 10, vsync: this);
    _dayTabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _gradeTabController.dispose();
    _dayTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.home),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Schedule",
          style: TextStyle(
              fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 20),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Column(
            children: [
              ButtonsTabBar(
                controller: _gradeTabController,
                backgroundColor: const Color.fromRGBO(24, 87, 192, 1),
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                borderWidth: 1,
                borderColor: Colors.blue,
                unselectedBorderColor: Colors.white,
                radius: 20,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                tabs: List.generate(
                  10,
                  (index) => Tab(
                    text: "Grade ${index + 1}",
                  ),
                ),
              ),
              ButtonsTabBar(
                controller: _dayTabController,
                backgroundColor: const Color.fromRGBO(24, 87, 192, 1),
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                borderWidth: 1,
                borderColor: Colors.blue,
                unselectedBorderColor: Colors.white,
                radius: 20,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                tabs: const [
                  Tab(text: "Mon"),
                  Tab(text: "Tue"),
                  Tab(text: "Wed"), 
                  Tab(text: "Thu"),
                  Tab(text: "Fri"),
                  Tab(text: "Sat"),
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _gradeTabController,
        children: List.generate(
          10,
          (gradeIndex) => TabBarView(
            controller: _dayTabController,
            children: List.generate(
              6,
              (dayIndex) => TimelineList(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.edit, color: Colors.white),
      ),
    );
  }
}
