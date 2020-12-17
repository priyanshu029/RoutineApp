import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'timeSubject.dart';
import 'constant.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';
import 'attendance.dart';

class Routine extends StatefulWidget {
  @override
  _RoutineState createState() => _RoutineState();
}

class _RoutineState extends State<Routine> {
  int currentIndex = 0;

  void onTap(String aa) {
    print(aa);

//        (){
      print ('longPressed');
//    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routine'),
        actions: <Widget>[
          FlatButton(
            onPressed: (){
              print('Pressed');
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Attendance();
              }));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                bottomLeft:Radius.circular(25.0),
              ),
            ),
            child: Text(
              'A',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xFFFFFFFF),
        child: ListView(
          children: <Widget>[
            TimeSubject('09:00', subList[currentIndex][0],onTap),
            TimeSubject('10:00', subList[currentIndex][1],onTap),
            TimeSubject('11:00', subList[currentIndex][2],onTap),
            TimeSubject('12:00', subList[currentIndex][3],onTap),
            SizedBox(
              height: 300.0,
              child: Image(
              fit: BoxFit.contain,
              image: AssetImage('assets/timeforlunch01.jpg'),
              ),
            ),
            TimeSubject('01:00', subList[currentIndex][4], onTap),
            TimeSubject('02:00', subList[currentIndex][5], onTap),
            TimeSubject('03:00', subList[currentIndex][6], onTap),
            TimeSubject('04:00', subList[currentIndex][7], onTap),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: Colors.lightBlue),
        selectedItemColor: Colors.lightBlue,
        unselectedIconTheme: IconThemeData(color: Colors.black),
        items: [
          bottomNavigationBarItem('Mon'),
          bottomNavigationBarItem('Tue'),
          bottomNavigationBarItem('Wed'),
          bottomNavigationBarItem('Thu'),
          bottomNavigationBarItem('Fri'),
        ],
        currentIndex: currentIndex,
        onTap: (int a) {
          setState(() {
            currentIndex = a;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem(String title) {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.subject,
        color: Colors.black87,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black54),
      ),
    );
  }
}

//Image.asset('assets/break.jpg')
