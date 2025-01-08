import 'package:baps_school_app/Widgets/widgets.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class AdminLeaveApprove extends StatefulWidget {
  const AdminLeaveApprove({super.key});

  @override
  State<AdminLeaveApprove> createState() => _AdminLeaveApproveState();
}

class _AdminLeaveApproveState extends State<AdminLeaveApprove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(icon: Icons.home, title: "Leave Approval", onPress: (){

      }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            searchTextField(hintText: "Search"),
            mentorLeaveApprovalCard(),
            SizedBox(height: 4,),
            mentorLeaveApprovalCard(),
            mentorLeaveApprovalCard(),
            SizedBox(height: 4,),
            mentorLeaveApprovalCard(),
            mentorLeaveApprovalCard(),
            SizedBox(height: 4,),
            mentorLeaveApprovalCard(),
            SizedBox(height: 20,),
            customButton(text: "Approve all(8) and allot", onPressed: (){

            },backgroundColor: const Color.fromRGBO(53, 87, 255, 1),borderRadius: BorderRadius.circular(25),padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),fontSize: 16)
          ],
        ),
        
      ),
      floatingActionButton: customFloatingActionButton(onPressed: () {
        
      },),
    );
  }


  Widget mentorLeaveApprovalCard(){
    return SizedBox(
      height: 90,
      width: 360,
      child: Card(
        elevation: 0.5,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage("assets/admin_mentor_profile_icon.png"),  // Use an image URL
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Prakesh Raj",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                            ),
                          ),
                          Text(
                            "MA10101",
                            style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 10),
                    child:customRoundedIconButton(icon: Icons.close, backgroundColor: const Color.fromRGBO(251, 229, 229, 1), iconColor: Colors.red, onPressed: (){

                    })
                  ),
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 10),
                    child:customRoundedIconButton(icon: Icons.check, backgroundColor: const Color.fromRGBO(221, 255, 209, 1), iconColor: Colors.green, onPressed: (){

                    })
                    
                  ),
                                    SizedBox(width: 10,),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}