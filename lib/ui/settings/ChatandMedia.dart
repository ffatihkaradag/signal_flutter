import 'package:flutter/material.dart';

class ChatandMedia extends StatefulWidget {
  @override
  _ChatandMediaState createState() => _ChatandMediaState();
}

class _ChatandMediaState extends State<ChatandMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Chat and Media',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
