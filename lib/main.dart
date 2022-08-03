import 'package:flutter/material.dart';
import 'package:flutter_application_4/Telegram/Drwer.dart';
import 'package:flutter_application_4/Telegram/editpage.dart';
import 'package:flutter_application_4/Telegram/mainpage.dart';
import 'package:flutter_application_4/page/webview.dart';
import 'package:flutter_application_4/whatsapp/chatpage.dart';
import 'package:flutter_application_4/whatsapp/loginpage.dart';
import 'package:flutter_application_4/whatsapp/status.dart';
import 'package:flutter_application_4/whatsapp/whatsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
     // home: const MyHomePage(),
   //home: const Chat(),
   // home:const Mystatus(),
   // home:const Mylogin(),
  // home: const Mywhatsapp(),
  //home: const Mymain(),
  //home: const Mydrwerpa(),
 // home: const Myedit(),
 home: const Webviewpage(),
    );
  }
}
