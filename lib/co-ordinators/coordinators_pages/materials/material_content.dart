import 'package:baps_school_app/co-ordinators/coordinators_pages/materials/materials_upload.dart';
import 'package:baps_school_app/colors.dart';
import 'package:flutter/material.dart';

class ContentOfMaterials extends StatefulWidget {
  final String text;
  const ContentOfMaterials({super.key, required this.text});

  @override
  State<ContentOfMaterials> createState() => _ContentOfMaterialsState();
}

class _ContentOfMaterialsState extends State<ContentOfMaterials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('Material'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(widget.text),
            ),
            levelContainer("Level 1", "Content of Level 1"),
            levelContainer("Level 2", "Content of Level 2"),
            levelContainer("Level 3", "Content of Level 3"),
          ],
        ),
      
      ),
      floatingActionButton: GestureDetector(
        // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MaterialUpload())),
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 0, 75, 136),
          elevation: 1,
          hoverColor: Colors.white,
          
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            1,
          ),
          onPressed: () {},
          child: const Icon(Icons.add,color: Colors.white,),
        ),
      ),
    );
  }

  Widget levelContainer(String levelTitle, String contentBase) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            levelTitle,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          DefaultTabController(
            length: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  TabBar(
                    labelPadding: const EdgeInsets.all(1),
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // border: Border.all(
                        //     color: const Color.fromARGB(255, 0, 31, 56)),
                        color: const Color.fromARGB(255, 0, 75, 136)),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      tabWithBorder("PDF"),
                      tabWithBorder("Link"),
                      tabWithBorder("Video"),
                    ],
                  ),
                  Container(
                    height: 150, // Adjust height as needed
                    padding: const EdgeInsets.all(8.0),
                     decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      ),
                    child: TabBarView(
                      children: [
                        Center(child: Text("$contentBase - PDF")),
                        Center(child: Text("$contentBase - Link")),
                        Center(child: Text("$contentBase - Video")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tabWithBorder(String title) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          //   border: Border.symmetric(
          //     vertical: BorderSide(
          //       color: Colors.grey,
          //     ),
          //   // borderRadius: BorderRadius.circular(6),
          // ),
          ),
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}
