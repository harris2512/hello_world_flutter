import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        // leading: new IconButton(
        //     icon: Icon(Icons.menu),
        //     onPressed: () {
        //       print('Icon Clicked!');
        //     }),
        title: new Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Icon Clicked!');
              }),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('Icon Clicked!');
              })
        ],
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.camera,
            color: Colors.white,
            size: 55.0,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.red,
            height: 70.0,
            width: double.infinity,
            child: Text(
              'Harris',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          preferredSize: Size.fromHeight(70.0),
        ),
      ),
      body: Center(
        child: Text(
          'Harris Body',
          style: TextStyle(fontSize: 28.0, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        onPressed: () {
          print('FAB clicked');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
