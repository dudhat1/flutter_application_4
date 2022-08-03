import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_4/Telegram/Drwer.dart';
import 'package:flutter_application_4/Telegram/editpage.dart';

class Mymain extends StatefulWidget {
  const Mymain({Key? key}) : super(key: key);

  @override
  State<Mymain> createState() => _MymainState();
}

class _MymainState extends State<Mymain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
       _sheet(icon: Icons.search, text:"search" , index:0),
        _sheet(icon: Icons.add, text:"Add", index:1),
         _sheet(icon: Icons.home, text:"Home", index:2),
        ],),
      ),
        drawer: Mydrwerpa(),
        appBar: AppBar(
          title: const Text("Teledram"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: Text("Data"),
                  ),
                  const PopupMenuItem(
                    child: Text("Data2"),
                  ),
                ];
              },
            ),
          ],

        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.edit),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (Context) => Myedit()));
          },
        ));

    
  }
  
  _sheet({required IconData icon, required String text, required int index}) {
    return Expanded(
      child: Column(
          mainAxisSize:MainAxisSize.min,
        children: [
            Icon(icon),
            Text(text.toString()),
        ],
      ),
    );
  }
  
  // _sheet({required IconData icon,required Text text, required int index}) {
  //   return Expanded(
  //     child: Column(
  //         mainAxisSize:MainAxisSize.min,
  //       children: [
  //           Icon(icon),
  //           Text(text.toString()),
  //       ],
  //     ),
  //   );
  }



// (icon:Icons.search,text:"search",index:0),
// icon:Icons.add,text:"Add",index:1),
// icon:Icons.home,text: "Home",index:2)

// return Expanded(
//       child: Column(
//           mainAxisSize:MainAxisSize.min,
//         children: [
//             Icon(icon),
//             Text(text.toString()),
//         ],
//       ),
//     );