import 'dart:math';

import 'package:flutter/material.dart';
import 'package:signal_flutter/Constants.dart';

class ChatPage extends StatefulWidget {
  final MaterialColor colour;
  final String personName;
  final String personImg;
  ChatPage({this.personName, this.personImg, this.colour});
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  Color color = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  widget.personImg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 8),
            Text(widget.personName),
          ],
        ),
        actions: [
          Icon(
            Icons.video_call,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.call,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 5),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(widget.personImg), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.personName,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Phone Number',
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.all(8),
                    height: 55,
                    width: MediaQuery.of(context).size.width - 100,
                    child: Row(
                      children: [
                        Icon(Icons.sticky_note_2),
                        SizedBox(
                          width: 8,
                        ),
                        Flexible(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Signal Message',
                            ),
                            enabled: true,
                          ),
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.mic_rounded,
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: blue,
                    child: Icon(
                      Icons.add,
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
}
