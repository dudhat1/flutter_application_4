import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mydrwerpa extends StatefulWidget {
  const Mydrwerpa({Key? key}) : super(key: key);

  @override
  State<Mydrwerpa> createState() => _MydrwerpaState();
}

class _MydrwerpaState extends State<Mydrwerpa> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: CircleAvatar()),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("New group"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Contacts"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("New Calls"),
            ),
              ListTile(
              leading: Icon(Icons.nature_people_rounded),
              title: Text("People Nearby"),
            ),
              ListTile(
              leading: Icon(Icons.save_rounded),
              title: Text("Saved Messages"),
            ),
              ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
              ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Invite Friends"),
            ),
              ListTile(
              leading: Icon(Icons.question_mark_sharp),
              title: Text("Telegram Features"),
            ),
            
          ],
        ),
      );


    
  }
}