import 'package:flutter/material.dart';


class TimeSubject extends StatefulWidget {
  String subject;
  String time;
  Function onTap;

  TimeSubject(this.time,this.subject,this.onTap);

  @override
  _TimeSubjectState createState() => _TimeSubjectState();
}

class _TimeSubjectState extends State<TimeSubject> {


  Future _alertDialog(BuildContext context,String subj,String teacher) async {
    return showDialog(
       context: context,
      child:AlertDialog(
        elevation: 0,
        title: Text('$subj taught by  $teacher'),
        actions: <Widget>[
          Text(
            'Attendance %',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              widget.time,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 19,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 5,
            child: MaterialButton(
              onLongPress: (){
                print(widget.subject);
                _alertDialog(context,widget.subject,'teacher');
              },
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Colors.lightBlue,
              child: Text(
                widget.subject,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}


//class TimeSubject  {
//  Widget function(String time, String subject , Function onTap) {
//    return
//  }
//}
