import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                      color: Color(0xffFF7216),
                      borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(8.0),
                          bottomRight: const Radius.circular(8.0))),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 70, left: 40, right: 40, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hai, Selamat Datang di FastQuran!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Text("Learning Quran Easier!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 230, bottom: 0, left: 40, right: 40),
            child: Container(
                height: 200,
                width: 350,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                        offset: Offset(2, 2),
                      )
                    ],
                    borderRadius: new BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: <Widget>[
                 Container(
                   child: Image.asset('images/imgfirst.jpg')
                   ),
                  Container(
                    child: Column(
                      children:<Widget>[
                      Text("Detail Huruf"),
                      Text("Bla bla bla")
                      ]),
                  )],
                )),
          )
        ],
      ),
    );
  }
}
