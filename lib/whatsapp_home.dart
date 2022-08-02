import 'package:flutter/material.dart';
import 'package:whatsapp_clone/status_screen.dart';

import 'calls_screen.dart';
import 'camera_screen.dart';
import 'chats_screen.dart';

class whatsAppHome extends StatefulWidget {
  const whatsAppHome({Key? key}) : super(key: key);

  @override
  State<whatsAppHome> createState() => _whatsAppHomeState();
}

class _whatsAppHomeState extends State<whatsAppHome>
    with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController ,
          indicatorColor: Colors.green,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "Chats"),
            new Tab(text: "Status"),
            new Tab(text: "Calls"),
          ],
        ),
        actions:<Widget> [
          Icon(Icons.search_rounded),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          //Padding(padding: EdgeInsets.all(5)),
          Icon(Icons.more_vert,),
        ],
      ),
      body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraScreen(),
            new ChatsScreen(),
            new StatusScreen(),
            new CallsScreen(),
          ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
        onPressed: () => print("open chats"),
      ),

    );
  }
}
