// import 'package:flutter/material.dart';
// import 'package:interview_task/topic.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         //title: Text("App Dropdown Menu"),
//         actions: [
//           Theme(
//             data: Theme.of(context).copyWith(
//                 textTheme: TextTheme().apply(bodyColor: Colors.white),
//                 dividerColor: Colors.white,
//                 iconTheme: IconThemeData(color: Colors.white)),
//             child: PopupMenuButton<int>(
//               color: Colors.white,
//               itemBuilder: (context) => [
//                 PopupMenuItem<int>(
//                     value: 0,
//                     child: Row(
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.deepPurple,
//                             shape: CircleBorder(),
//                             padding: EdgeInsets.all(2.0),
//                           ),
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => topic(context)));
//                           },
//                           child: Icon(
//                             Icons.edit,
//                             size: 16,
//                           ),
//                         ),
//                         Text("Create Topic"),
//                       ],
//                     )),
//                 PopupMenuItem<int>(
//                     value: 1,
//                     child: Row(
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.deepOrange,
//                             shape: CircleBorder(),
//                             padding: EdgeInsets.all(2.0),
//                           ),
//                           onPressed: () {},
//                           child: Icon(
//                             Icons.video_call,
//                             size: 16,
//                           ),
//                         ),
//                         Text("Video Call"),
//                       ],
//                     )),
//                 //  PopupMenuDivider(),
//                 PopupMenuItem<int>(
//                     value: 2,
//                     child: Row(
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.grey,
//                             shape: CircleBorder(),
//                             padding: EdgeInsets.all(2.0),
//                           ),
//                           onPressed: () {},
//                           child: Icon(
//                             Icons.attach_file,
//                             size: 16,
//                           ),
//                         ),
//                         Text("Send File")
//                       ],
//                     )),
//                 PopupMenuItem<int>(
//                     value: 3,
//                     child: Row(
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.green,
//                             shape: CircleBorder(),
//                             padding: EdgeInsets.all(2.0),
//                           ),
//                           onPressed: () {},
//                           child: Icon(
//                             Icons.photo,
//                             size: 16,
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 7,
//                         ),
//                         Text("Send Image")
//                       ],
//                     )),
//                 PopupMenuItem<int>(
//                     value: 4,
//                     child: Row(
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.blue,
//                             shape: CircleBorder(),
//                             padding: EdgeInsets.all(2.0),
//                           ),
//                           onPressed: () {},
//                           child: Icon(
//                             Icons.camera,
//                             size: 16,
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 7,
//                         ),
//                         Text("Open Camera")
//                       ],
//                     )),
//                 PopupMenuItem<int>(
//                     value: 5,
//                     child: Row(
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.yellow,
//                             shape: CircleBorder(),
//                             padding: EdgeInsets.all(2.0),
//                           ),
//                           onPressed: () {},
//                           child: Icon(
//                             Icons.video_call_outlined,
//                             size: 16,
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 7,
//                         ),
//                         Text("Open Camera for video")
//                       ],
//                     )),
//                 PopupMenuItem<int>(
//                     value: 2,
//                     child: Row(
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.deepPurple,
//                             shape: CircleBorder(),
//                             padding: EdgeInsets.all(2.0),
//                           ),
//                           onPressed: () {},
//                           child: Icon(
//                             Icons.pin_drop,
//                             size: 16,
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 7,
//                         ),
//                         Text("Share Location")
//                       ],
//                     )),
//               ],
//               onSelected: (item) => SelectedItem(context, item),
//             ),
//           ),
//         ],
//       ),
//       body: Container(),
//     );
//   }

//   void SelectedItem(BuildContext context, item) {
//     switch (item) {
//       case 0:
//         Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => topic(context)));
//         break;
//       case 1:
//         print("Video Call");
//         break;
//       case 2:
//         print("Send File");
//         // Navigator.of(context).pushAndRemoveUntil(
//         //     MaterialPageRoute(builder: (context) => LoginPage()),
//         //     (route) => false);
//         break;
//     }
//   }
// }
