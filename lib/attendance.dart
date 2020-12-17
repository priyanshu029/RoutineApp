import 'package:chart_components/bar_chart_component.dart';
import 'package:chart_components/chart_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constant.dart';


class Attendance extends StatelessWidget {

  List<double>data = [12,13,24,40,50,60];
  List<String> label = ['a','b','c','d','e','f'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Attendance'
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Text('Subject 0',style: textStyle,),
          Text('Subject 1',style: textStyle,),
          Text('Subject 2',style: textStyle,),
          Text('Subject 3',style: textStyle,),
          Text('Subject 4',style: textStyle,),
          Text('Subject 5',style: textStyle,),
//          BarChart(
//            animationDuration: Duration(seconds: 3),
//            data:data,
//          )
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            child: BarChart(
              data: data,
              labels: label,
              reverse: true,
              barWidth: 42,
              barSeparation: 28,
              animationDuration: Duration(milliseconds: 1800),
              animationCurve: Curves.easeInOutSine,
              itemRadius: 30,
              iconHeight: 24,
              footerHeight: 24,
              headerValueHeight: 16,
              roundValuesOnText: false,
              lineGridColor: Colors.white,
              getColor:(a){
                int aa =a.floor();
                switch(aa){
                  case 12 :
                    return Colors.red;
                  case 60:
                    return Colors.green;
                }
                return Colors.lightBlue;
              },
            ),
          ),
        ],
      ),
    );
  }
}
