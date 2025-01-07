import 'package:baps_school_app/Widgets/widgets.dart';
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

            },backgroundColor: const Color.fromARGB(255, 26, 106, 172),borderRadius: BorderRadius.circular(25))
          ],
        ),
        
      ),
      floatingActionButton: customFloatingActionButton(onPressed: () {
        
      },),
    );
  }


  Widget mentorLeaveApprovalCard(){
    return SizedBox(
      height: 100,
      width: 370,
      child: Card(
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
                        radius: 30,
                        // backgroundImage: NetworkImage(avatarUrl),  // Use an image URL
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
                              fontSize: 16
                            ),
                          ),
                          Text(
                            "MA10101",
                            style: TextStyle(
                            color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 10),
                    child:customRoundedIconButton(icon: Icons.close, backgroundColor: const Color.fromARGB(255, 235, 160, 155), iconColor: Colors.red, onPressed: (){

                    })
                  ),
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 10),
                    child:customRoundedIconButton(icon: Icons.check, backgroundColor: const Color.fromARGB(255, 148, 214, 150), iconColor: Colors.green, onPressed: (){

                    })
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}