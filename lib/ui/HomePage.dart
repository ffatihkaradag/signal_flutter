import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:signal_flutter/Constants.dart';
import 'package:signal_flutter/data/Chat.dart';
import 'package:signal_flutter/ui/ChatPage.dart';
import 'package:signal_flutter/ui/MessagePage.dart';
import 'package:signal_flutter/ui/SettingsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => SettingsPage(),
                ),
              );
            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
        title: ListTile(
          leading: GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 20,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/default.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Text(
            "Signal",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: chat.length,
          itemBuilder: (BuildContext context, int index) {
            return Slidable(
              actionPane: SlidableDrawerActionPane(),
              actions: [
                IconSlideAction(
                  foregroundColor: Colors.white,
                  color: archiveBg,
                  icon: Icons.archive,
                )
              ],
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => ChatPage(
                                personName: chat[index]['name'],
                                personImg: chat[index]['img'],
                              )));
                },
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(chat[index]['img']),
                        fit: BoxFit.cover),
                  ),
                ),
                title: Text(
                  chat[index]['name'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                subtitle: Text(chat[index]['message']),
              ),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () async {},
            heroTag: null,
            child: Icon(
              Icons.camera_alt_rounded,
              color: grey,
              size: 25,
            ),
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            backgroundColor: blue,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => MessagePage()));
            },
            heroTag: null,
            child: Icon(
              Icons.edit,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
