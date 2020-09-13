import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/pages/calls_screen.dart';
import 'package:whatsapp_flutter/pages/camera_screen.dart';
import 'package:whatsapp_flutter/pages/chat_screen.dart';
import 'package:whatsapp_flutter/pages/status_screen.dart';

// ignore: must_be_immutable
class WhatsappHome extends StatefulWidget {
  CameraDescription camera;
  WhatsappHome({this.camera});

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Whatsapp"),
          elevation: 0.7,
          bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.camera_alt),
              ),
              new Tab(
                text: "Chats",
              ),
              new Tab(
                text: "Statis",
              ),
              new Tab(
                text: "Calls",
              ),
            ],
          ),
          actions: <Widget>[
            new Icon(Icons.search),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
            new Icon(Icons.more_vert)
          ],
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraScreen(camera: widget.camera),
            new ChatScreen(),
            new StatusScreen(),
            new CallsScreen(),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
            backgroundColor: Theme.of(context).accentColor,
            child: new Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () {}));
  }
}
