// // import 'package:flutter/material.dart';

// // class ChatMessage extends StatelessWidget {
// //   const ChatMessage({
// //     required this.text,
// //     Key? key,
// //   }) : super(key: key);
// //   final String text;

// //   @override
// //   Widget build(BuildContext context) {
// //     var _name;
// //     return Container(
// //       margin: const EdgeInsets.symmetric(vertical: 10.0),
// //       child: Row(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Container(
// //             margin: const EdgeInsets.only(right: 16.0),
// //             child: CircleAvatar(child: Text(_name[0])),
// //           ),
// //           Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(_name, style: Theme.of(context).textTheme.headline4),
// //               Container(
// //                 margin: const EdgeInsets.only(top: 5.0),
// //                 child: Text(text),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class ChatScreen extends StatefulWidget {
// //   const ChatScreen({
// //     Key? key,
// //   }) : super(key: key);

// //   @override
// //   State<ChatScreen> createState() => _ChatScreenState();
// // }

// // class _ChatScreenState extends State<ChatScreen> {
// //   final List<ChatMessage> _messages = [];
// //   final _textController = TextEditingController();
// //   final FocusNode _focusNode = FocusNode();

// //   void _handleSubmitted(String text) {
// //     _textController.clear();
// //     var message = ChatMessage(
// //       text: text,
// //     );
// //     setState(() {
// //       _messages.insert(0, message);
// //     });
// //     _focusNode.requestFocus();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('Chat')),
// //       body: Column(
// //         children: [
// //           Flexible(
// //             child: ListView.builder(
// //               padding: const EdgeInsets.all(8.0),
// //               reverse: true,
// //               itemBuilder: (_, index) => _messages[index],
// //               itemCount: _messages.length,
// //             ),
// //           ),
// //           const Divider(height: 1.0),
// //           Container(
// //             decoration: BoxDecoration(color: Theme.of(context).cardColor),
// //             child: _buildTextComposer(),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildTextComposer() {
// //     return Container(
// //       margin: const EdgeInsets.symmetric(horizontal: 8.0),
// //       child: Row(
// //         children: [
// //           Flexible(
// //             child: TextField(
// //               controller: _textController,
// //               onSubmitted: _handleSubmitted,
// //               decoration:
// //                   const InputDecoration.collapsed(hintText: 'Send a message'),
// //               focusNode: _focusNode,
// //             ),
// //           ),
// //           Container(
// //             margin: const EdgeInsets.symmetric(horizontal: 4.0),
// //             child: IconButton(
// //                 icon: const Icon(Icons.send),
// //                 onPressed: () => _handleSubmitted(_textController.text)),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:interview_task/topic.dart';
// //import 'package:interview_task/topic.dart';

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   @override
// Widget popup_menu(BuildContext context) {
//   // appBar: AppBar(
//   //   centerTitle: true,
//   //   //title: Text("App Dropdown Menu"),
//   //   actions: [
//   //     Theme(
//   //       data: Theme.of(context).copyWith(
//   //           textTheme: TextTheme().apply(bodyColor: Colors.white),
//   //           dividerColor: Colors.white,
//   //           iconTheme: IconThemeData(color: Colors.white)),
//   //       child:
//   return PopupMenuButton<int>(
//     color: Colors.white,
//     itemBuilder: (context) => [
//       PopupMenuItem<int>(
//           value: 0,
//           child: Row(
//             children: [
//               // Icon(
//               //   Icons.edit,
//               //   color: Colors.deepPurple,
//               // ),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   shape: CircleBorder(),
//                   padding: EdgeInsets.all(30),
//                 ),
//                 onPressed: () {},
//                 child: Icon(
//                   Icons.android_outlined,
//                   size: 50,
//                 ),
//               ),
//               Text("Create Topic"),
//             ],
//           )),
//       PopupMenuItem<int>(
//           value: 1,
//           child: Row(
//             children: [
//               Icon(
//                 Icons.video_call,
//                 color: Colors.deepPurple,
//               ),
//               Text("Video Call"),
//             ],
//           )),
//       //  PopupMenuDivider(),
//       PopupMenuItem<int>(
//           value: 2,
//           child: Row(
//             children: [
//               Icon(
//                 Icons.attach_file,
//                 color: Colors.deepPurple,
//               ),
//               const SizedBox(
//                 width: 7,
//               ),
//               Text("Send File")
//             ],
//           )),
//       PopupMenuItem<int>(
//           value: 3,
//           child: Row(
//             children: [
//               Icon(
//                 Icons.image,
//                 color: Colors.deepPurple,
//               ),
//               const SizedBox(
//                 width: 7,
//               ),
//               Text("Send Image")
//             ],
//           )),
//       PopupMenuItem<int>(
//           value: 4,
//           child: Row(
//             children: [
//               Icon(
//                 Icons.camera,
//                 color: Colors.deepPurple,
//               ),
//               const SizedBox(
//                 width: 7,
//               ),
//               Text("Open Camera")
//             ],
//           )),
//       PopupMenuItem<int>(
//           value: 5,
//           child: Row(
//             children: [
//               Icon(
//                 Icons.video_call_outlined,
//                 color: Colors.deepPurple,
//               ),
//               const SizedBox(
//                 width: 7,
//               ),
//               Text("Open Camera for video")
//             ],
//           )),
//       PopupMenuItem<int>(
//           value: 2,
//           child: Row(
//             children: [
//               Icon(
//                 Icons.pin_drop,
//                 color: Colors.deepPurple,
//               ),
//               const SizedBox(
//                 width: 7,
//               ),
//               Text("Share Location")
//             ],
//           )),
//     ],
//     onSelected: (item) => SelectedItem(context, item),
//   );
// }

// void SelectedItem(BuildContext context, item) {
//   switch (item) {
//     case 0:
//       Navigator.of(context)
//           .push(MaterialPageRoute(builder: (context) => topic(context)));
//       break;
//     case 1:
//       print("Video Call");
//       break;
//     case 2:
//       print("Send File");
//       // Navigator.of(context).pushAndRemoveUntil(
//       //     MaterialPageRoute(builder: (context) => LoginPage()),
//       //     (route) => false);
//       break;
//   }
// }
