import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webviewpage extends StatefulWidget {
  const Webviewpage({Key? key}) : super(key: key);

  @override
  State<Webviewpage> createState() => _WebviewpageState();
}

class _WebviewpageState extends State<Webviewpage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
      body: WebView(
       javascriptMode: JavascriptMode.unrestricted,
       initialUrl: "https://www.amazon.in/",
        ),
    ),
    );
    
  }
}