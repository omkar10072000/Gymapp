import 'package:flutter/material.dart';
import 'package:pro/BMI/shapeup3.dart';
import 'package:pro/BMI/shapeup4.dart';

class shapeup2 extends StatefulWidget {
  @override
  _shapeup2State createState() => _shapeup2State();
}

class _shapeup2State extends State<shapeup2> {
  bool isMale;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[200],
        body: Center(
            child: Column(
          children: [
            SizedBox(height: 200.0),
            Text(
              'Select Your Gender',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'roboto',
                color: Colors.amber[400],
              ),
            ),
            SizedBox(height: 60.0),
            Row(
              children: [
                SizedBox(
                  width: 30.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/m.jpg'),
                  radius: 60.0,
                ),
                SizedBox(width: 60.0),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/f.jpg'),
                  radius: 60.0,
                )
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(width: 45.0),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      isMale = true;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => shapeup3(
                                  isMan: isMale,
                                )));
                  },
                  child: Text(
                    'MALE',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontFamily: 'roboto',
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.lightBlue[400],
                  // padding: EdgeInsets.fromLTRB(10.0, 0.3, 10.0, 0.3)
                ),
                SizedBox(width: 70.0),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      isMale = false;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => shapeup3(
                                  isMan: isMale,
                                )));
                  },
                  child: Text(
                    'FEMALE',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.pinkAccent[200],
                  //padding: EdgeInsets.all(0.5),
                ),
              ],
            ),
          ],
        )));
  }
}
