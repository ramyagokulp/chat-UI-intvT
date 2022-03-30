import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/pageTwo.dart';
import 'package:interview_task/popup.dart';
import 'package:interview_task/popup_widget.dart';
import 'package:interview_task/topic.dart';
import 'package:interview_task/topic_images.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    var _name;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(child: Text(_name[0])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name, style: Theme.of(context).textTheme.headline4),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [];
  final _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  void _handleSubmitted(String text) {
    _textController.clear();
    var message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Row(
          children: [
            CircleAvatar(
                backgroundColor: Colors.green,
                child: Text('Ma',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
            Text('Discussion Group',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          const Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 61,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                ],
              ),
              child: Row(
                children: <Widget>[
                  // IconButton(
                  //   icon: Icon(
                  //     Icons.add,
                  //     size: 30,
                  //   ),
                  //   onPressed: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => popup_menu(context)));
                  //   },
                  // ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: PopupMenuButton<int>(
                      child: Icon(Icons.add),
                      color: Colors.white,
                      itemBuilder: (context) => [
                        PopupMenuItem<int>(
                            value: 0,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepPurple,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(2.0),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                topic(context)));
                                  },
                                  child: Icon(
                                    Icons.edit,
                                    size: 16,
                                  ),
                                ),
                                Text("Create Topic"),
                              ],
                            )),
                        PopupMenuItem<int>(
                            value: 1,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrange,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(2.0),
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.video_call,
                                    size: 16,
                                  ),
                                ),
                                Text("Video Call"),
                              ],
                            )),
                        //  PopupMenuDivider(),
                        PopupMenuItem<int>(
                            value: 2,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(2.0),
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.attach_file,
                                    size: 16,
                                  ),
                                ),
                                Text("Send File")
                              ],
                            )),
                        PopupMenuItem<int>(
                            value: 3,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(2.0),
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.photo,
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text("Send Image")
                              ],
                            )),
                        PopupMenuItem<int>(
                            value: 4,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(2.0),
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.camera,
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text("Open Camera")
                              ],
                            )),
                        PopupMenuItem<int>(
                            value: 5,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.yellow,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(2.0),
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.video_call_outlined,
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text("Open Camera for video")
                              ],
                            )),
                        PopupMenuItem<int>(
                            value: 2,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepPurple,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(2.0),
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.pin_drop,
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text("Share Location")
                              ],
                            )),
                      ],
                      onSelected: (item) => SelectedItem(context, item),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      onSubmitted: _handleSubmitted,
                      decoration: const InputDecoration.collapsed(
                          hintText: 'Write a message'),
                      focusNode: _focusNode,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    // decoration:
                    //     BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: InkWell(
                      child: Icon(
                        Icons.keyboard_voice,
                        color: Colors.black,
                      ),
                      onLongPress: () {
                        setState(() {
                          var _showBottom = true;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () =>
                            _handleSubmitted(_textController.text)),
                  ),
                  // IconButton(
                  //   icon: Icon(Icons.photo_camera),
                  //   onPressed: () {},
                  // ),
                ],
              ),
            ),
          ),
          // SizedBox(width: 15),
        ],
      ),
    );
  }

  popup_menu(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          textTheme: TextTheme().apply(bodyColor: Colors.white),
          dividerColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white)),
      child: PopupMenuButton<int>(
        color: Colors.white,
        itemBuilder: (context) => [
          PopupMenuItem<int>(
              value: 0,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(2.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => topic(context)));
                    },
                    child: Icon(
                      Icons.edit,
                      size: 16,
                    ),
                  ),
                  Text("Create Topic"),
                ],
              )),
          PopupMenuItem<int>(
              value: 1,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(2.0),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.video_call,
                      size: 16,
                    ),
                  ),
                  Text("Video Call"),
                ],
              )),
          //  PopupMenuDivider(),
          PopupMenuItem<int>(
              value: 2,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(2.0),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.attach_file,
                      size: 16,
                    ),
                  ),
                  Text("Send File")
                ],
              )),
          PopupMenuItem<int>(
              value: 3,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(2.0),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.photo,
                      size: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text("Send Image")
                ],
              )),
          PopupMenuItem<int>(
              value: 4,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(2.0),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.camera,
                      size: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text("Open Camera")
                ],
              )),
          PopupMenuItem<int>(
              value: 5,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(2.0),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.video_call_outlined,
                      size: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text("Open Camera for video")
                ],
              )),
          PopupMenuItem<int>(
              value: 2,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(2.0),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.pin_drop,
                      size: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text("Share Location")
                ],
              )),
        ],
        onSelected: (item) => SelectedItem(context, item),
      ),
    );
  }

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => topic(context)));
        break;
      case 1:
        print("Video Call");
        break;
      case 2:
        print("Send File");
        // Navigator.of(context).pushAndRemoveUntil(
        //     MaterialPageRoute(builder: (context) => LoginPage()),
        //     (route) => false);
        break;
    }
  }
}
