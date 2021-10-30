import 'package:flutter/material.dart';
import 'package:pro/main.dart';
import 'package:pro/timer/main_3.4.dart';
import 'package:pro/timer/main_3.5.dart';
import 'package:pro/widget/shopping_item_widget.dart';
import 'data.dart';
import 'model/shopping_item.dart';

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

class Bellyfat extends StatefulWidget {
  @override
  _BellyfatState createState() => _BellyfatState();
}

class _BellyfatState extends State<Bellyfat> {
  int index = 0;
  List<name> l = [
    name("push", "15 Rep"),
    name("push", "15 Rep"),
    name("push", "15 Rep"),
    name("push", "15 Rep"),
    name("push", "15 Rep"),
    name("push", "15 Rep"),
    name("push", "15 Rep"),
    name("push", "15 Rep")
  ];
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 48.0, 12.0, 2.0),
            child: Card(
              elevation: 20.0,
              shape: StadiumBorder(),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0)),
                      gradient: LinearGradient(colors: [
                        Colors.lightBlueAccent,
                        Colors.blueAccent,
                      ])),
                  child: ListTile(
                    isThreeLine: true,
                    contentPadding: EdgeInsets.all(30.0),
                    shape: StadiumBorder(),
                    title: Text(
                      " Week 1 \n",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      " Beginner \n",
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
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "week1"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "week2"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "week3"),
            ],
          ),
        ]),
        Scaffold(
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
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => StopwatchPage()));
            },
            child: Card(
              elevation: 40.0,
              color: Colors.white,
              shape: CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.alarm,
                  color: Colors.redAccent,
                  size: 70.0,
                  //semanticLabel: "Timer",
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
          ),

          body: Column(children: [
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
                        "        Week 1 \n",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blue[900],
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        "        Beginner \n",
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
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => mains()));
                  },
                  child: Card(
                    //shape: CircleBorder(
                    // side: BorderSide(width: 140, color: Colors.white)),
                    elevation: 50.0,
                    color: Colors.white,
                    child: Icon(
                      Icons.food_bank_sharp,
                      color: Colors.redAccent,
                      size: 90.0,
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
                                      builder: (context) => mains()));
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
          ]),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "week1"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "week2"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "week3"),
            ],
          ),
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 28.0, 12.0, 30.0),
            child: Card(
              elevation: 40.0,
              shape: StadiumBorder(),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0)),
                      gradient: LinearGradient(colors: [
                        Colors.lightBlueAccent,
                        Colors.blueAccent,
                      ])),
                  child: ListTile(
                    isThreeLine: true,
                    contentPadding: EdgeInsets.all(30.0),
                    shape: StadiumBorder(),
                    title: Text(
                      " Week 1 \n",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      " Beginner \n",
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
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "week1"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "week2"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "week3"),
            ],
          ),
        ]),
      ],
    );
  }
}
