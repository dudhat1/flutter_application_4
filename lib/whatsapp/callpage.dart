import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mycall extends StatefulWidget {
  const Mycall({Key? key}) : super(key: key);

  @override
  State<Mycall> createState() => _MycallState();
}

class _MycallState extends State<Mycall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      floatingActionButton:
       FloatingActionButton(
        splashColor: Colors.pink,
        child: const Icon(Icons.add_call),
        onPressed: (){},
      ),
    );
    
  }
}