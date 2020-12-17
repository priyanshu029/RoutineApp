import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'outLook.dart';
import 'timeSub.dart';

void main() {
  runApp(new MaterialApp(
    home: new Routine(),
  ));
}

class Routine extends StatefulWidget {
  @override
  _RoutineState createState() => _RoutineState();
}


BottomNavigationBarItem bottomNavigationBarItem(String title) {
  return BottomNavigationBarItem(
    icon: Icon(
      Icons.swap_horiz,
      color: Colors.yellow,
    ),
    title: Text(
      title,
    ),
  );
}


class _RoutineState extends State<Routine> {
  int _index = 0;
  List<Widget> items= <Widget>[];

  List<List<String>> sublist=[sublistMon,sublistTue,sublistMon,sublistTue,sublistMon,sublistTue];

  timeSub a= timeSub(TimeOfDay(hour:15,minute: 00),'Hindi') ;


  static List<String> sublistMon= [
    'Maths',
    'Analog',
    'Electromagnetic',
    'Network',
    'Instrumentation',
    'Machine'

  ];

//  static List<String> sublistMon= [
//    'Maths',
//    'Analog',
//    'Electromagnetic',
//    'Network',
//    'Instrumentation',
//    'Machine'
//
//  ];

  static List<String> sublistTue= [
    'Analog',
    'Electromagnetic',
    'Maths',
    'Network',
    'Machine',
    'Instrumentation',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sublist.add(sublistMon);
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Head'),
        centerTitle: false,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/h.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: outLook(sublist[_index]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          bottomNavigationBarItem('mon'),
          bottomNavigationBarItem('tue'),
          bottomNavigationBarItem('wed'),
          bottomNavigationBarItem('thr'),
          bottomNavigationBarItem('fri'),
//          bottomNavigationBarItem('sat'),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
      ),
    );
  }
}
