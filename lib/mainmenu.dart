

import 'package:flutter/material.dart';

class mainmenu extends StatefulWidget {
  @override
  _mainmenuState createState() => _mainmenuState();
}

class _mainmenuState extends State<mainmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffFF7216)),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  color: Color(0xffFF7216),
                  borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[],
                    ),
                  )
                ],
              ),
            ),
            Center(
                child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(children: <Widget>[
                      Text('Cara Pengucapan',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: GestureDetector(
                      // margin: EdgeInsets.only(top: 40),
                      child: ClipOval(
                        child: Material(
                          color: Color(0xffFF7216), // button color
                          child: InkWell(
                            splashColor: Colors.lightBlue, // inkwell color
                            child: SizedBox(
                                width: 60,
                                height: 60,
                                child: Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                )),
                            onLongPress: () {
                              print('long');
                            },
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
