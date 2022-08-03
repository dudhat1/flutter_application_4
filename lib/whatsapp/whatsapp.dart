
import 'package:flutter/material.dart';

import 'package:flutter_application_4/whatsapp/callpage.dart';
import 'package:flutter_application_4/whatsapp/chatpage.dart';
import 'package:flutter_application_4/whatsapp/status.dart';

class Mywhatsapp extends StatefulWidget {
  const Mywhatsapp({Key? key}) : super(key: key);

  @override
  State<Mywhatsapp> createState() => _MywhatsappState();
}

class _MywhatsappState extends State<Mywhatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar:AppBar(
          title:const  Text("Whatsapp"),
          bottom: TabBar( 
            tabs: [
              Row(
                children: const [
                  Icon(Icons.camera_rear),
                  Text("Status")
                ],
                ),
                Text("Call"),
                Text("Photo"),
            ]),
        ),
        body:const  TabBarView(children: [
          Chat(),
          Mystatus(),
          Mycall(),

        ]),
        ),
        );
    
  }
}