// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class PageOne extends StatefulWidget {
//   const PageOne({Key? key}) : super(key: key);

//   @override
//   State<PageOne> createState() => _PageOneState();
// }

// class _PageOneState extends State<PageOne> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Container(
//               child: ListTile(
//             leading: CircleAvatar(
//               backgroundColor: Colors.green,
//               // child: Text(item['id'].toString(),
//               child: Text(
//                 'Ma',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//               ),
//             ),
//           )),
//         ),
//         body: Container(
//           margin: EdgeInsets.all(15.0),
//           height: 61,
//           child: Row(
//             children: <Widget>[
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(35.0),
//                     boxShadow: [
//                       BoxShadow(
//                           offset: Offset(0, 3),
//                           blurRadius: 5,
//                           color: Colors.grey)
//                     ],
//                   ),
//                   child: Row(
//                     children: <Widget>[
//                       IconButton(
//                         icon: Icon(Icons.add),
//                         onPressed: () {},
//                       ),
//                       Expanded(
//                         child: TextField(
//                           decoration: InputDecoration(
//                               hintText: "Write a message...",
//                               border: InputBorder.none),
//                         ),
//                       ),
//                       Container(
//                         padding: const EdgeInsets.all(15.0),
//                         // decoration:
//                         //     BoxDecoration(color: Colors.white, shape: BoxShape.circle),
//                         child: InkWell(
//                           child: Icon(
//                             Icons.keyboard_voice,
//                             color: Colors.black,
//                           ),
//                           onLongPress: () {
//                             setState(() {
//                               var _showBottom = true;
//                             });
//                           },
//                         ),
//                       )
//                       // IconButton(
//                       //   icon: Icon(Icons.photo_camera),
//                       //   onPressed: () {},
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//               // SizedBox(width: 15),
//             ],
//           ),
//         ));
//   }
// }
