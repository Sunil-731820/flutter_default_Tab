import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
                Tab(icon: Icon(Icons.add)),
                Tab(icon: Icon(Icons.alarm))
              ],
            ),
            title: Text("DefaultTab"),
            backgroundColor: Colors.red,
          ),
          body: TabBarView(
            children: [
              Icon(Icons.music_note, size: 100),
              Icon(Icons.music_video, size: 100),
              Icon(Icons.camera_alt, size: 100, semanticLabel: "camera"),
              Icon(Icons.grade, size: 100),
              Icon(Icons.email, size: 100),
              Icon(Icons.add, size: 100),
              Icon(Icons.alarm, size: 100)
            ],
          ),
        ),
      ),
    );
  }
}
