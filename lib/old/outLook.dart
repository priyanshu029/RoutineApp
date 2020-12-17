import 'package:flutter/material.dart';
import 'timeSub.dart';



//For all page single outlook




Padding row(String time, String subjectName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            'From $time',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
        Expanded(
          flex: 5,
          child: MaterialButton(
            color: Colors.red,
            child: Text(
              subjectName,
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}


// ignore: camel_case_types
class outLook extends StatefulWidget {

  outLook (this.s);

  List<String> s;

  @override
  _outLookState createState() => _outLookState();
}

// ignore: camel_case_types
class _outLookState extends State<outLook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            row('09:00', widget.s[0]),
            row('10:00', widget.s[1]),
            row('11:00', widget.s[2]),
            row('12:00', widget.s[3]),
            SizedBox(
              width: 200.0,
              height: 200.0,
              child: const Card(
                child: Center(
                  child: Text(
                    'Break',
                  ),
                ),
              ),
            ),
            row('01:00', widget.s[4]),
            row('02:00', widget.s[5]),
            row('03:00', 'Sub 7'),
            row('04:00', 'Sub 8'),
          ],
        ),
      ),
    );
  }
}
