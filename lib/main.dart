import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'routine.dart';

void main() {
  runApp(new MaterialApp(
    home: new Routine(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  #070E1F

  @override
  void initState() {
    // TODO: implement initState
//    super.initState();
    Timer(Duration(seconds: 2), () {
      print("Yeah, this line is printed after 3 seconds");
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return new Routine();
      }));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(
                height: 200,
                width: 200,
                child: ColoredBox(
                  color: Color(0xFF070E1E),
                ),
              ),
              Container(
                height: 160,
                width: 160,
                child: ColoredBox(
                  color: Colors.white,
                  child: Text(
                    'R',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration:TextDecoration.none,
                      color: Color(0xFF070E1E),
                      fontSize: 140.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
//
//appBar: new AppBar(
//title: new Text('Class Management'),
//centerTitle: false,
//),
//body: Container(
////        color: Color(0xFF070E1E),
//child: Center(
//child: Row(
//children: <Widget>[
//Expanded(
//child: MaterialButton(
//padding: EdgeInsets.only(right: 20.0,left: 20.0),
//height: 100,
//elevation: 10.0,
//shape: ContinuousRectangleBorder(
//borderRadius: BorderRadius.circular(20.0)
//),
//color: Color(0xFF070E1E),
//onPressed: (){
//Navigator.push(context, MaterialPageRoute(builder:(context){
//return Routine();
//}));
//},
//child: Text('R',style: TextStyle(),),
//),
//),
//Expanded(
//child: MaterialButton(
//shape: CircleBorder(),
//color: Colors.lightBlue,
//onPressed: (){
//
//},
//child: Text('A'),
//),
//)
//],
//),
//),
//),
