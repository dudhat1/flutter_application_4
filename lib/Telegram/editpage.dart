import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myedit extends StatefulWidget {
  const Myedit({Key? key}) : super(key: key);

  @override
  State<Myedit> createState() => _MyeditState();
}

class _MyeditState extends State<Myedit> {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("New Message"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.person_add_alt_rounded),
          onPressed: () {},
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.people),
              title: Text("New group"),
            ),
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text("New Secret Chat"),
            ),
            ListTile(
              leading: Icon(Icons.speaker),
              title: Text("New Channel"),
            ),
          ],
        ),
      ),
    );
  }
}