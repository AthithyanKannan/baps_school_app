import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class MentorGeneralActivity extends StatefulWidget {
  const MentorGeneralActivity({super.key});

  @override
  State<MentorGeneralActivity> createState() => _MentorGeneralActivityState();
}

class _MentorGeneralActivityState extends State<MentorGeneralActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        title: "General Activity",
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                MentorGeneralActivityCard(),
                SizedBox(
                  height: 5,
                ),
                MentorGeneralActivityCard(),
                SizedBox(
                  height: 5,
                ),
                MentorGeneralActivityCard(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        shape: CircleBorder(),
        elevation: 0,
        backgroundColor: Color.fromRGBO(174, 188, 255, 1),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MentorGeneralActivityPage(),
              ));
        },
        child: Icon(
          Icons.add,
          color: Color.fromRGBO(12, 54, 255, 1),
        ),
      ),
    );
  }

  Widget MentorGeneralActivityCard() {
    return SizedBox(
      width: 350,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fees Payment",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text("Verification Pending",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Academic",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text("Cancel",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.red))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("20000",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MentorGeneralActivityPage extends StatefulWidget {
  const MentorGeneralActivityPage({super.key});

  @override
  State<MentorGeneralActivityPage> createState() =>
      _MentorGeneralActivityPageState();
}

class _MentorGeneralActivityPageState extends State<MentorGeneralActivityPage> {
  String? selectedActivities;
  final List<String> activities = [
    'Fee Payment',
    'Stationary Collection',
    'Other'
  ];
  String? selectedFeeType;
  final List<String> feeType = [
    'Academic Fee',
    'Extra Curricular Fee',
  ];

  bool showFeeDetails = false;
  bool showCollectionDetails = false;
  bool showDescription = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        title: "General Activity",
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Student Name",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                            hintText: "Student Name",
                            backgroundColor: Color.fromRGBO(247, 248, 250, 1),
                            padding: EdgeInsets.symmetric(horizontal: 13)),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Activity Type",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: customDropdown(
                            selectedValue: selectedActivities,
                            options: activities,
                            hintText: "Activity Type",
                            onChanged: (value) {
                              setState(() {
                                selectedActivities = value;
                                showFeeDetails = value == 'Fee Payment';
                                showCollectionDetails =
                                    value == 'Stationary Collection';
                                showDescription = value == 'Other' ||
                                    value == 'Stationary Collection' ||
                                    value == 'Fee Payment';
                              });
                            },
                          ),
                        ),
                        if (showFeeDetails) ...[
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Fee Type",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: customDropdown(
                            selectedValue: selectedFeeType,
                            options: feeType,
                            hintText: "Fee type",
                            onChanged: (value) {
                              setState(() {
                                selectedFeeType = value;
                              });
                            },
                          )),
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Amount",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          textField(
                              hintText: "Enter amount",
                              backgroundColor: Color.fromRGBO(247, 248, 250, 1),
                              padding: EdgeInsets.symmetric(horizontal: 13)),
                        ],
                        if (showCollectionDetails) ...[
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Collection",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          textField(
                              hintText: "Enter Collection",
                              backgroundColor: Color.fromRGBO(247, 248, 250, 1),
                              padding: EdgeInsets.symmetric(horizontal: 13)),
                        ],
                        if (showDescription) ...[
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Description",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          textField(
                            hintText: "Enter Description",
                            backgroundColor: Color.fromRGBO(247, 248, 250, 1),
                            padding: EdgeInsets.symmetric(horizontal: 13),
                          ),
                        ],
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: customButton(
                            text: "Submit",
                            backgroundColor: Color.fromRGBO(53, 87, 255, 1),
                            borderRadius: BorderRadius.circular(30),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}