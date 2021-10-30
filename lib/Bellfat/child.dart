import 'package:flutter/material.dart';
import 'package:pro/BMI/meal.dart';
import 'package:pro/main.dart';
import 'package:pro/timer/main_3.5.dart';
import 'package:pro/home_muscle/meal_detail_screen.dart';
import 'package:pro/information.dart';

class name {
  String names;
  String no_of_rep;
  bool values;
  var COLORS_LIST = Colors.lightBlue[100];
  name(String n, String no) {
    this.names = n;
    this.no_of_rep = no;
    this.values = false;
  }
}

class ChildWidget extends StatefulWidget {
  final AvailableNumber number;
  String week;
  String level;
  ChildWidget({Key key, this.number, this.level, this.week}) : super(key: key);

  @override
  _ChildWidgetState createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  int index = 0;

  List<name> l = [
    name("cow stretch", "15 Rep"),
    name("Cobra stretch", "15 Rep"),
    name("flutter kicks", "15 Rep"),
    name("High leg crunches", "15 Rep"),
    name("Bent knee jack knife", "15 Rep"),
    name("Hip Raises", "15 Rep"),
    name("Spiderman Plank", "50 sec"),
    name("Plank Hold", "50 sec"),
    name("wind shild wipers", "15 Rep"),
    name("In & out", "50 sec"),
    name("plank with heap drop", "50 sec"),
  ];

  Widget build(BuildContext context) {
    String file = "";
    if (widget.number == AvailableNumber.First) {
      file = "first";
    } else if (widget.number == AvailableNumber.Second) {
      file = "second";
    } else {
      file = "third";
    }

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            // floatingactionbuttonlocation : Floatingactionbuttonlocation.centerDocked,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniStartFloat,
            // floatingActionButton: FloatingActionButton(
            //      clipBehavior: ,
            //    mini: ,
            // materialTapTargetSize: 100,

            // elevation: 30.0,
            floatingActionButton: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => StopwatchPage()));
              },
              child: Card(
                elevation: 70.0,
                color: Colors.white,
                shape: CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.alarm,
                    color: Colors.redAccent,
                    size: 50.0,
                    //semanticLabel: "Timer",
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 48.0, 12.0, 23.0),
                  child: Card(
                    elevation: 10.0,
                    shape: StadiumBorder(),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(30.0)),
                            gradient: LinearGradient(colors: [
                              Colors.lightBlueAccent[100],
                              Colors.blueAccent,
                            ])),
                        child: ListTile(
                          isThreeLine: true,
                          contentPadding: EdgeInsets.all(30.0),
                          shape: StadiumBorder(),
                          title: Text(
                            widget.week,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.blue[900],
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            widget.level,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.blue[900],
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )),
                  ),
                ),
                Expanded(
                  child: Scaffold(
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.endFloat,
                    floatingActionButton: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MealDetailScreen()));
                      },
                      child: Card(
                        //shape: CircleBorder(
                        // side: BorderSide(width: 140, color: Colors.white)),
                        elevation: 70.0,
                        color: Colors.white,
                        child: Icon(
                          Icons.food_bank_sharp,
                          color: Colors.redAccent,
                          size: 70.0,
                        ),
                      ),
                    ),
                    backgroundColor: Colors.white,
                    body: ListView.builder(
                        itemCount: l.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              DetailScreen()));
                                },
                                child: Card(
                                  color: l[index].COLORS_LIST,
                                  elevation: 5.0,
                                  shape: StadiumBorder(),
                                  child: Container(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 2, horizontal: 48),
                                      leading: Text(l[index].no_of_rep,
                                          style: TextStyle(fontSize: 20)),
                                      title: Text(l[index].names,
                                          style: TextStyle(fontSize: 20)),
                                      trailing: Checkbox(
                                        checkColor: Colors.orangeAccent,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        value: l[index].values,
                                        onChanged: (value) {
                                          setState(() {
                                            l[index].values = value;
                                            if (l[index].values == true)
                                              l[index].COLORS_LIST =
                                                  Colors.lightBlue[600];
                                            else
                                              l[index].COLORS_LIST =
                                                  Colors.lightBlue[100];
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ));
                        }),
                  ),
                ),
              ],
            )));
  }
}

enum AvailableNumber { First, Second, Third }
