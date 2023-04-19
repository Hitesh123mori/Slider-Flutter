
import 'package:flutter/material.dart ' ;


void main()
{
  runApp(myapp()) ;
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);


  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  RangeValues values  = RangeValues(0, 1) ;

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(),values.end.toString()) ;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          min: 0,
          max: 100,
          activeColor: Colors.blue,
          inactiveColor: Colors.black,
          onChanged: (newValue){
            values = newValue ;
            print("Start Value  : ${newValue.start} , End Value : ${newValue.end}") ;
            setState(() {

            });
          },
        ) ,
      ),
    );
  }
}
