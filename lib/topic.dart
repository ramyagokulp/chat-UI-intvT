import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

final _formKey = GlobalKey<FormState>();

Widget topic(BuildContext context) {
  String topic;
  return Scaffold(
    appBar: AppBar(
      title: Text(
        ' Topic',
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      backgroundColor: Colors.deepPurple,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          TextFormField(
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
              ),
              hintText: 'Title..',
              // labelStyle: TextStyle(color: Colors.purple),
            ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'This field is required';
              }
              return null;
            },
            onChanged: (value) => topic = value,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                ),
                hintText: 'Description....',
                // labelStyle: TextStyle(color: Colors.purple),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              onChanged: (value) => topic = value,
              maxLines: 3),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(15.0),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => topic(context)));
                        },
                        child: Icon(
                          Icons.camera_alt,
                          size: 30,
                        ),
                      ),
                      Text("Capture"),
                    ],
                  ),
                ),
                //  SizedBox(
                //     width: 10,
                //   ),
                Expanded(
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(15.0),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => topic(context)));
                        },
                        child: Icon(
                          Icons.image,
                          size: 30,
                        ),
                      ),
                      Text("Media"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(15.0),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => topic(context)));
                        },
                        child: GlowIcon(
                          Icons.summarize_outlined,
                          size: 30,
                        ),
                      ),
                      Text("Document"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(15.0),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => topic(context)));
                        },
                        child: GlowIcon(
                          Icons.keyboard_voice,
                          size: 30,
                        ),
                      ),
                      Text("Voice"),
                    ],
                  ),
                ),
              ],
            ),
          ),
//const SizedBox(20),
          SizedBox(height: 40),
          Container(
            height: 60,
            width: 250,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: Colors.deepPurple),
                  onPressed: () {},
                  child: Text('Create ')),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ]),
      ),
    ),
  );
}
