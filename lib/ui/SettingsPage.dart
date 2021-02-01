import 'package:flutter/material.dart';
import 'package:signal_flutter/ui/settings/Advanced.dart';
import 'package:signal_flutter/ui/settings/Appearance.dart';
import 'package:signal_flutter/ui/settings/ChatandMedia.dart';
import 'package:signal_flutter/ui/settings/Help.dart';
import 'package:signal_flutter/ui/settings/Linkeddevices.dart';
import 'package:signal_flutter/ui/settings/Notifications.dart';
import 'package:signal_flutter/ui/settings/Privacy.dart';
import 'package:signal_flutter/ui/settings/SMS.dart';
import 'package:signal_flutter/ui/settings/Storage.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: ClipOval(
                  child: CircleAvatar(
                    radius: 25,
                    child: Image.asset(
                      'assets/images/default.png',
                      fit: BoxFit.contain,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                title: Text(
                  'Signal App',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('info@signal.com'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => SMS()));
                },
                leading: Icon(Icons.chat_bubble_outline_rounded),
                title: Text("SMS and MMS"),
                subtitle: Text("Off"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => Notifications()));
                },
                leading: Icon(Icons.notifications_outlined),
                title: Text("Notifications"),
                subtitle: Text("On"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Privacy()));
                },
                leading: Icon(Icons.lock_outline),
                title: Text("Privacy"),
                subtitle: Text("Screen lock Off, Registration lock off"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => Appearance()));
                },
                leading: Icon(Icons.lightbulb_outline),
                title: Text("Appearance"),
                subtitle: Text("Theme Light, Language"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ChatandMedia()));
                },
                leading: Icon(Icons.photo),
                title: Text("Chats and media"),
                subtitle: Text(""),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Storage()));
                },
                leading: Icon(Icons.storage_outlined),
                title: Text("Storage"),
                subtitle: Text(""),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => LinkedDevices()));
                },
                leading: Icon(Icons.cast_connected),
                title: Text("Linked devices"),
                subtitle: Text(""),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Help()));
                },
                leading: Icon(Icons.help_outline_outlined),
                title: Text("Help"),
                subtitle: Text(""),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Advanced()));
                },
                leading: Icon(Icons.code),
                title: Text("Advanced"),
                subtitle: Text(""),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.hearing_outlined),
                title: Text("Donate to Signal"),
                subtitle: Text(""),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
