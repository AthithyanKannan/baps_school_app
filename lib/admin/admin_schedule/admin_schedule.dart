import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class AdminSchedule extends StatefulWidget {
  const AdminSchedule({super.key});

  @override
  State<AdminSchedule> createState() => _AdminScheduleState();
}

class _AdminScheduleState extends State<AdminSchedule>
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
          "Academic Schedule",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55.0),
          child: Column(
            children: [
              Container(
                color: Colors.black, // Color of the border line
                height: 0.2, // Height of the border
              ),
              SizedBox(
                height: 10,
              ),
              ButtonsTabBar(
                controller: _tabController,
                backgroundColor: Color.fromRGBO(24, 87, 192, 1),
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
                borderWidth: 1,
                borderColor: Color.fromRGBO(24, 87, 192, 1),
                unselectedBorderColor: Colors.white,
                radius: 25,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                tabs: List.generate(
                  10,
                  (index) => Tab(
                    text: "Grade ${index + 1}",
                  ),
                ),
              ),
            ],
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
      floatingActionButton: customFloatingActionButton(
        onPressed: () {},
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
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminSchedulePage(),
                ));
          },
          child: ScheduleCard(
              textColor: Color.fromRGBO(101, 85, 143, 1),
              title: "Section A",
              color: Color.fromRGBO(232, 230, 237, 1),
              image: AssetImage("assets/admin_activity_general.png")),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminSchedulePage(),
                ));
          },
          child: ScheduleCard(
              textColor: Color.fromRGBO(238, 170, 22, 1),
              title: "Section B",
              color: Color.fromRGBO(255, 243, 220, 1),
              image: AssetImage("assets/admin_activity_issue.png")),
        ),
      ],
    );
  }
}

class AdminSchedulePage extends StatefulWidget {
  const AdminSchedulePage({super.key});

  @override
  State<AdminSchedulePage> createState() => _AdminSchedulePageState();
}

class _AdminSchedulePageState extends State<AdminSchedulePage>
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
            child: const Icon(Icons.home)),
        backgroundColor: Colors.white,
        title: const Text(
          "Academic Schedule",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.black, // Color of the border line
                height: 0.2, // Height of the border
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ButtonsTabBar(
                  physics: ClampingScrollPhysics(),
                  controller: _gradeTabController,
                  backgroundColor: Color.fromRGBO(53, 87, 255, 1),
                  unselectedBackgroundColor: Colors.white,
                  unselectedLabelStyle: const TextStyle(color: Colors.black),
                  labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                  borderColor: Color.fromRGBO(24, 87, 192, 1),
                  unselectedBorderColor: Colors.white,
                  radius: 20,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  tabs: List.generate(
                    10,
                    (index) => Tab(
                      text: "Grade ${index + 1}",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ButtonsTabBar(
                  controller: _dayTabController,
                  backgroundColor: Color.fromRGBO(53, 87, 255, 1),
                  unselectedBackgroundColor: Colors.white,
                  unselectedLabelStyle: const TextStyle(color: Colors.black),
                  labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                  borderWidth: 1,
                  borderColor: Color.fromRGBO(24, 87, 192, 1),
                  unselectedBorderColor: Colors.white,
                  radius: 20,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  tabs: const [
                    Tab(text: "Mon"),
                    Tab(text: "Tue"),
                    Tab(text: "Wed"),
                    Tab(text: "Thu"),
                    Tab(text: "Fri"),
                    Tab(text: "Sat"),
                  ],
                ),
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
      floatingActionButton: customFloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
