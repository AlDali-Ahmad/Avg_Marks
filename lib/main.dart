import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var n1=TextEditingController();
  var n2=TextEditingController();
  var n3=TextEditingController();
  var n4=TextEditingController();
  double value=0.0;
  double s=0;
  void getavg(){
setState(() {

  double num1=num.parse(n1.text.toString()).toDouble();
  double num2=num.parse(n2.text.toString()).toDouble();
  double num3=num.parse(n3.text.toString()).toDouble();
  double num4=num.parse(n4.text.toString()).toDouble();
  value=(num1+num2+num3+num4)/4;
  List valus=[num1,num2,num3,num4];
  //for(var i=0;i<valus.length;i++){
    //s+=valus[i];
  //}
  //value=s/valus.length;
});
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avg Marks',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: Scaffold(

        appBar: AppBar(
          title: Text('Avg Marks UniverSity'),
        ),
        body: Column(
          children: [
            SizedBox(height: 10.0,),
            TextField(
              controller:  n1,
            ),
            SizedBox(height: 10.0,),
            TextField(
              controller: n2,
            ),
            SizedBox(height: 10.0,),
            TextField(
              controller: n3,
            ),
            SizedBox(height: 10.0,),
            TextField(
              controller: n4,
            ),
            ElevatedButton(onPressed: getavg, child: Icon(Icons.ac_unit_outlined)),
            Text("$value")
          ],
        ),
      ),
    );
  }
}
