import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/co-ordinators/coordinators_pages/schedule/exam_schedule/exam_schedule.dart';
import 'package:baps_school_app/co-ordinators/coordinators_pages/schedule/schedule_content.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
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
            child: const Icon(Icons.home)),
        backgroundColor: Colors.white,
        title: const Text(
          "Schedule",
          style: TextStyle(
              fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 20),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: ButtonsTabBar(
            controller: _tabController,
            backgroundColor: Color.fromRGBO(24, 87, 192, 1),
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
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: List.generate(
          10,
          (index) => Grade(),
        ),
      ),
    );
  }

  Widget Grade() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScheduleContent(),
                ))
          },
          child: ScheduleCard(
              textColor: Color.fromRGBO(15, 190, 179, 1),
              title: "Academic Schedule",
              color: Color.fromRGBO(201, 247, 245, 1),
              image: AssetImage("assets/co_academic_schedule.png")),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExamSchedule(),
                ))
          },
          child: ScheduleCard(
              textColor: Color.fromRGBO(101, 85, 143, 1),
              title: "Exam Schedule",
              color: Color.fromRGBO(101, 85, 143, 0.4),
              image: AssetImage("assets/co_exam_schedule.png")),
        ),
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
            textColor: Color.fromRGBO(238, 170, 22, 1),
            title: "Invigilation Duties",
            color: Color.fromRGBO(255, 243, 220, 1),
            image: AssetImage("assets/co_invigilation_duties.png")),
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
            textColor: Color.fromRGBO(53, 87, 255, 1),
            title: "Weekly Schedules",
            color: Color.fromRGBO(235, 238, 255, 1),
            image: AssetImage("assets/co_weekly_schedules.png")),
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
            textColor: Color.fromRGBO(173, 81, 145, 1),
            title: "Schedule Settings",
            color: Color.fromRGBO(255, 218, 240, 1),
            image: AssetImage("assets/co_schedule_settings.png")),
      ],
    );
  }
}
