import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  final CameraDescription camera;

  CameraScreen({this.camera});

  @override
  CameraScreenState createState() {
    return new CameraScreenState();
  }
}

class CameraScreenState extends State<CameraScreen> {
  CameraController controller;

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Text(
      "Camera",
      style: new TextStyle(fontSize: 20.0),
    ));
  }
}
