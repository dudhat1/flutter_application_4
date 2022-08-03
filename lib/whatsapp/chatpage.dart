import 'package:flutter/material.dart';


class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> image1 = [
    "https://images.pexels.com/photos/1172253/pexels-photo-1172253.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3gbTRzO1BHZtuyT_OzCZbE02Op0HzImyAAMBeGGNqM3ywiVHDmwEDhlw40vOOIqCI_h4&usqp=CAU",
    "https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/326168/pexels-photo-326168.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500https://images.pexels.com/photos/326168/pexels-photo-326168.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://www.whatsappimages.in/wp-content/uploads/2021/06/HD-New-Beautiful-Unique-Profile-Images-Pictures.gif",

  ];
  List<String> name=["om","yes","pappu","rahul","shammi"];
  List<String> message=["Hi","Okay","offfo","hey miss","Kal kab miloge"];
  List<String> time=["05:32","04:33","0:07","10:10","08:08"];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      floatingActionButton: Column(
        children: [
          const Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: image1.length,
                  itemBuilder: (
                    (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        child: Row(                         
                          children: [
                            // Text("data")
                             CircleAvatar(
                              backgroundColor: Colors.pinkAccent,
                              backgroundImage: NetworkImage(
                                  image1[index]),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(                           
                                  children:  [
                                    Text(name[index]),                                  
                                    // Text("5:32")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(message[index]),
                                  ],
                                ),                         
                              ],
                            ),
                           const  Spacer(),
                                    Row(
                                      children: [
                                        Text(time[index]),
                                      ],
                                    ),
                          ],
                        ),
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}