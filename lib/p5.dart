import 'package:flutter/material.dart';
import 'package:pro/BMI/shapeup2.dart';
import 'package:pro/Bellfat/bell.dart';
import 'package:pro/gym_muscle/gym_muscle.dart';

class User_interface_2 extends StatefulWidget {
  @override
  _User_interface_2State createState() => _User_interface_2State();
}

class _User_interface_2State extends State<User_interface_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 63, 255, 1),
        leading: InkWell(child: Icon(Icons.timer)),
        title: Text(
          "        WORKOUT",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => Bellfat_Home()));
                },
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
                            //Color.fromRGBO(108, 115, 255, 1),
                            //Color.fromRGBO(58, 63, 255, 1)
                          ])),
                      child: ListTile(
                        //  isThreeLine: true,
                        contentPadding: EdgeInsets.all(30.0),
                        // tileColor: Colors.blue[200],
                        // focusColor: Colors.blue[300],

                        shape: StadiumBorder(),
                        //                    leading: ProfilePages(),

                        title: Text(
                          "Loss Belly Fat\n",
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
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => gym_Home()));
                },
                child: Card(
                  elevation: 40.0,
                  // shape: StadiumBorder(),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10.0)),
                          gradient: LinearGradient(colors: [
                            Colors.lightBlueAccent,
                            Colors.blueAccent
                            //Color.fromRGBO(108,115,255,1),
                            //Color.fromRGBO(58, 63, 255, 1)
                          ])),
                      child: ListTile(
                        //isThreeLine: true,
                        contentPadding: EdgeInsets.all(30.0),
                        //tileColor: Colors.blue[200],
                        // focusColor: Colors.blue[300],

                        shape: StadiumBorder(),
                        // leading: ProfilePages(),

                        title: Text(
                          "Muscle Training\n",
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
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => shapeup2()));
                },
                child: Card(
                  elevation: 40.0,
                  // shape: StadiumBorder(),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10.0)),
                          gradient: LinearGradient(colors: [
                            Colors.lightBlueAccent,
                            Colors.blueAccent
                            //Color.fromRGBO(108,115,255,1),
                            //Color.fromRGBO(58, 63, 255, 1)
                          ])),
                      child: ListTile(
                        //isThreeLine: true,
                        contentPadding: EdgeInsets.all(30.0),
                        //tileColor: Colors.blue[200],
                        // focusColor: Colors.blue[300],

                        shape: StadiumBorder(),
                        // leading: ProfilePages(),

                        title: Text(
                          "Calculate BMI\n",
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
            ),
          ],
        ),
      ),
    );
  }
}
