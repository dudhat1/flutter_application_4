import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mystatus extends StatefulWidget {
  const Mystatus({Key? key}) : super(key: key);

  @override
  State<Mystatus> createState() => _MystatusState();
}

class _MystatusState extends State<Mystatus> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Colors.white,

      floatingActionButton: Column(
       children: [
        const Spacer(),
          IconButton(onPressed: (){},icon: const Icon(Icons.edit),),
          IconButton(onPressed: (){},icon: const Icon(Icons.camera_alt_rounded),),
        ],
      ),
       body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://image.winudf.com/v2/image1/Y29tLmRvd25sb29kLnNhdi53aG1lZGlhX2ljb25fMTU4NzI3ODQzNF8wOTE/icon.png?w=170&fakeurl=1"),
            ),
           // trailing: Text("2:20"),
            title: Text("    My Status",style: TextStyle(
              fontWeight: FontWeight.bold,
               fontSize: 18,
               color: Colors.black ),),
            subtitle: Text(" Add My Status"),
          ),
          Text("Recent Updates"),


          ListTile(
            
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://media.istockphoto.com/vectors/geometric-speed-letter-logotype-y-vector-id1254027576?k=20&m=1254027576&s=612x612&w=0&h=VQeBn4sjATauyEDc5Y1Do2mEdoChWNP4KuldkrC0TJc="),
              
            
            ),
            trailing: Text("10:00"),
            title: Text("YASH",style: TextStyle(
              fontWeight: FontWeight.bold,
               fontSize: 18,
               color: Colors.black ),),
              
          ),
          Text("Viewed Updats"),

          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://c8.alamy.com/comp/2BTTYM5/letter-h-black-flower-alphabet-beautiful-capital-letter-with-shadow-2BTTYM5.jpg"),
            ),
            trailing: Text("30:30"),
            title: Text("HARI",style: TextStyle(
              fontWeight: FontWeight.bold,
               fontSize: 18,
               color: Colors.black ),),
           
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://us.123rf.com/450wm/rondale/rondale1701/rondale170100555/69948558-fire-letter-o-of-burning-blue-flame-flaming-burn-font-or-bonfire-alphabet-text-with-sizzling-smoke-a.jpg?ver=6"),
            ),
            trailing: Text("5:35"),
            title: Text("OMS",style: TextStyle(
              fontWeight: FontWeight.bold,
               fontSize: 18,
               color: Colors.black ),),
            
          ),
          
          ],
          ),
     );
    
    
  }
}