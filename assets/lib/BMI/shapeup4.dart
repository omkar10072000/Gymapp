import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro/BMI/shapeup5.dart';

class shapeup4 extends StatelessWidget {
  final bmiModel;
  final isGuy;
  final String name;
  shapeup4({this.bmiModel, this.isGuy, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Container(
        /*decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wp4655528.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),

          ),),*/

        //padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 175,
                width: 175,
                child: bmiModel.isNormal
                    ? SvgPicture.asset(
                        "assets/happy.svg",
                        fit: BoxFit.contain,
                      )
                    : SvgPicture.asset(
                        "assets/sad.svg",
                        fit: BoxFit.contain,
                      ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                isGuy
                    ? Text(
                        "Mr. ",
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0),
                      )
                    : Text(
                        "Ms. ",
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0),
                      ),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
              ]),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Your BMI is ${bmiModel.bmi} ",
                style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.amber[400],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
              SizedBox(height: 10),
              Text(
                " ${bmiModel.comments} ",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
              SizedBox(height: 10),
              bmiModel.isNormal
                  ? Text(
                      "Hurray! Your BMI is Normal",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    )
                  : Text(
                      "Sadly! Your BMI is not Normal",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
              SizedBox(height: 80.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => shapeup5(
                                    namee: name,
                                    BMImodel: bmiModel,
                                    isDude: isGuy,
                                  )));
                    },
                    child: Text(
                      'GET FITNESS TIPS',
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
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
            ],
          ),
        ),
      ),
    );
  }
}
