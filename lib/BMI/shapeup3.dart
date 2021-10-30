import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/BMI/bmimodel.dart';
import 'package:pro/BMI/shapeup4.dart';

class shapeup3 extends StatefulWidget {
  bool isMan;
  shapeup3({this.isMan});

  @override
  _shapeup3State createState() => _shapeup3State(isMan);
}

class _shapeup3State extends State<shapeup3> {
  DateTime _dateTime;
  double _heightofUser = 100.0;
  double _weightofUser = 50.0;
  String nameofUser = "XYZ";
  double _bmi = 0;
  BMIModel _bmiModel;
  bool isMan;
  _shapeup3State(this.isMan);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'ENTER YOUR INFORMATION',
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      fontFamily: 'roboto',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                    onChanged: (text) {
                      setState(() {
                        nameofUser = text;
                        print("\n\n\n\n =======>" + text + "\n\n\n\n");
                      });
                      print(text);
                    },
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(
                          color: Colors.amber[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Height (cm)',
                    style: TextStyle(
                      color: Colors.amber[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  Container(
                    child: Slider(
                      min: 80.0,
                      max: 250.0,
                      onChanged: (height) {
                        setState(() {
                          _heightofUser = height;
                        });
                      },
                      value: _heightofUser,
                      divisions: 170,
                      activeColor: Colors.redAccent,
                      label: "$_heightofUser",
                    ),
                  ),
                  Text("$_heightofUser",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Weight (kg)',
                    style: TextStyle(
                      color: Colors.amber[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  Container(
                    child: Slider(
                      min: 30.0,
                      max: 150.0,
                      onChanged: (weight) {
                        setState(() {
                          _weightofUser = weight;
                        });
                      },
                      value: _weightofUser,
                      divisions: 240,
                      activeColor: Colors.redAccent,
                      label: "$_weightofUser",
                    ),
                  ),
                  Text("$_weightofUser",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      )),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    _dateTime == null ? 'PICK A DATE' : _dateTime.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      letterSpacing: 2.5,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  RaisedButton(
                    child: Text(
                      'DATE OF BIRTH',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1949),
                              lastDate: DateTime(2025))
                          .then((date) {
                        setState(() {
                          _dateTime = date;
                        });
                      });
                    },
                    color: Colors.amber[400],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            _bmi = _weightofUser /
                                ((_heightofUser / 100) * (_heightofUser / 100));
                            if (_bmi >= 18.5 && _bmi <= 25.0) {
                              _bmiModel = BMIModel(
                                  bmi: double.parse((_bmi).toStringAsFixed(2)),
                                  isNormal: true,
                                  comments: "You are Totally Fit");
                            } else if (_bmi < 18.5) {
                              _bmiModel = BMIModel(
                                  bmi: double.parse((_bmi).toStringAsFixed(2)),
                                  isNormal: false,
                                  comments: "You are Under-Weighted");
                            } else if (_bmi > 25.0 && _bmi <= 30) {
                              _bmiModel = BMIModel(
                                  bmi: double.parse((_bmi).toStringAsFixed(2)),
                                  isNormal: false,
                                  comments:
                                      "You are One sandwich away from fat");
                            } else {
                              _bmiModel = BMIModel(
                                  bmi: double.parse((_bmi).toStringAsFixed(2)),
                                  isNormal: false,
                                  comments: "You are Obese");
                            }
                            print(nameofUser);
                            print("Height = $_heightofUser");
                            print("Weight = $_weightofUser");
                            print("BMI = $_bmi");
                            if (nameofUser == Null) {
                              nameofUser = "XYZ";
                            }
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => shapeup4(
                                        bmiModel: _bmiModel,
                                        isGuy: isMan,
                                        name: nameofUser,
                                      )));
                        },
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        ),
                        color: Colors.lightGreen[500],
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        color: Colors.lightGreen[500],
                        padding: EdgeInsets.fromLTRB(0.5, 5.5, 0.5, 5.5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
