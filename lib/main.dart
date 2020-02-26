import 'package:flutter/material.dart';
import 'HurufModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFF7216),
          title: Text("Fast Quran"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {},
            )
          ],
        ),
        body: DisplayListView(),
      ),
    );
  }
}
