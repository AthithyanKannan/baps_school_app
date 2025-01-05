// import 'package:baps_school_app/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';

// class MaterialUpload extends StatefulWidget {
//   const MaterialUpload({super.key});

//   @override
//   State<MaterialUpload> createState() => _MaterialUploadState();
// }

// class _MaterialUploadState extends State<MaterialUpload> {
//   final List<String> pdfFiles = [];
//   final List<String> pptFiles = [];
//   final List<String> videoFiles = [];

//   Future<void> _pickFile(List<String> files, String fileType, FileType pickerType) async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: pickerType,
//       allowMultiple: true,
//     );

//     if (result != null) {
//       setState(() {
//         files.addAll(result.files.map((file) => file.name).toList());
//       });
//     }
//   }

//   Widget fileContainer(String title, List<String> files, String fileType, FileType pickerType) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Container(
//         padding: const EdgeInsets.all(8.0),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: const TextStyle(
//                   fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//             ),
//             const SizedBox(height: 8),
//             ElevatedButton(
//               onPressed: () => _pickFile(files, fileType, pickerType),
//               child: const Text("Choose Files to Upload"),
//             ),
//             const SizedBox(height: 8),
//             for (String file in files)
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 4.0),
//                 child: Row(
//                   children: [
//                     Icon(Icons.insert_drive_file, color: Colors.blue),
//                     const SizedBox(width: 8),
//                     Expanded(child: Text(file)),
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       appBar: AppBar(
//         backgroundColor: backgroundColor,
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: const Icon(Icons.arrow_back),
//         ),
//         title: const Text(
//           'Material',
//           style: TextStyle(
//               fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 20),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 fileContainer("PDF Support", pdfFiles, "PDF", FileType.custom),
//                 fileContainer("PPT Support", pptFiles, "PPT", FileType.custom),
//                 fileContainer("Video Files Support", videoFiles, "Video", FileType.video),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
