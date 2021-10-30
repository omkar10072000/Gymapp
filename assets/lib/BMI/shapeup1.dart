import 'package:flutter/material.dart';
import 'package:pro/BMI/shapeup2.dart';

class shapeup1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50.0),
              CircleAvatar(
                backgroundImage: AssetImage('assets/gym1.jpg'),
                radius: 60.0,
              ),
              SizedBox(height: 20.0),
              Text(
                'Welcome To ShapeUp',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[400],
                  fontFamily: 'roboto',
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Your personalized Fitness App',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 150.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => shapeup2()));
                    },
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        fontSize: 30.0,
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
                    padding: EdgeInsets.all(0.5),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 35.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 200.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.contact_phone,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Contact Us :  662-607-000',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
