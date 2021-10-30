import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class MealSitesScreen extends StatelessWidget {
  final bmimm;
  final String name1;
  final bool isBloke;
  MealSitesScreen({Key key, this.bmimm, this.name1, this.isBloke}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final today = DateTime.now();
    var parts = name1.split(' ');
    var part1 = parts[0];
    String url;
    String url2;
    if(bmimm.bmi>= 18.5 && bmimm.bmi<=25.0){
      url = 'https://diet.ind.in/diet-plans/healthy-diet-chart-for-indian-family/';
    }
    else if(bmimm.bmi < 18.5){
      url = 'https://www.healthline.com/nutrition/3000-calorie-meal-plan';
    }
    else{
      url = 'https://www.healthifyme.com/blog/best-indian-diet-plan-weight-loss';
    }


    if(bmimm.bmi>= 18.5 && bmimm.bmi<=25.0 && isBloke){
      url2 = 'https://www.lifehack.org/688549/the-ultimate-workout-routines-for-men';
    }
    else if(bmimm.bmi < 18.5 && isBloke){
      url2 = 'https://www.muscleandfitness.com/workout-plan/workouts/workout-routines/gain-10-pounds-muscle-4-weeks-1/';
    }
    else if(isBloke){
      url2 = 'https://www.mensjournal.com/health-fitness/4-week-workout-plan-lose-weight-and-burn-away-belly-fat/';
    }
    else if(bmimm.bmi>= 18.5 && bmimm.bmi<=25.0){
      url2 = 'https://www.shape.com/fitness/workouts/4-week-workout-plan';
    }
    else if(bmimm.bmi < 18.5){
      url2 = 'https://bonytobombshell.com/beginners-workout-for-women-looking-to-build-muscle-gain-weight/';
    }
    else{
      url2 = 'https://www.shape.com/fitness/workouts/no-fail-fat-loss-plan';
    }


    openURL() async{
      if(await canLaunch(url)){
        await launch(url, forceSafariVC: true, forceWebView: true);
      }else{
        throw "Could not reach";
      }
    }
    openURL2() async{
      if(await canLaunch(url2)){
        await launch(url2, forceSafariVC: true, forceWebView: true);
      }else{
        throw "Could not reach";
      }
    }
    return Scaffold(
      backgroundColor:  Colors.grey[850],
      body: Column(
          children:
          [
                ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                    bottom: const Radius.circular(40),
                    ),
                 child: Container(
                    color: Colors.grey[400],
                    padding: const EdgeInsets.only(top: 50, left: 20, right: 16, bottom: 10),
                  child: Column(
                    children: [
                    ListTile(
                      title: Text(
                        "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMM").format(today)}",
                        style: TextStyle(
                          fontSize:20,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey,
                        ),
                      ),
                      subtitle: Text(
                        "Hello, $part1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'sans',
                          fontSize: 26,
                          color: Colors.black,
                        ),

                      ),
                      trailing: CircleAvatar(
                        backgroundImage: AssetImage('assets/fitt.png'),
                        radius: 28.0,),
                    )
                  ],
                ),
              )
          ),
              SizedBox(height: 60,),
              Container(
                height: height*0.21,
                width: width,
                margin: EdgeInsets.only(left: 0,right: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color:  Colors.grey[400],
                ),
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Diet For You',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            fontFamily: '',
                            letterSpacing: 0,
                            color: Colors.blueGrey,
                          ),
                        ),
                    SizedBox(width: 100,),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF303440),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                          'assets/meal.png',
                          width: 25,
                          height: 25,
                          color: Color(0xFFd9e021)
                      ),)
                      ],
                    ),
                    SizedBox(height: 30,),
                    RaisedButton(
                        child: Text(
                            "Open Webpage",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: Color(0xFFd9e021),
                          ),
                        ),
                        padding: EdgeInsets.only(left: 10,bottom: 7.5, right: 10, top: 5),
                        color: Color(0xFF303440),
                        onPressed:() {
                          openURL();
                        }
                    ),
                  ],
                ),
              ),
            SizedBox(height: 30,),
            Container(
              height: height*0.21,
              width: width,
              margin: EdgeInsets.only(left: 0,right: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color:  Colors.grey[400],
              ),
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Workout For You',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          fontFamily: '',
                          letterSpacing: 0,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(width: 44,),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF303440),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                            'assets/chest1.png',
                            width: 25,
                            height: 25,
                            color: Color(0xFFd9e021)
                        ),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  RaisedButton(
                      child: Text(
                        "Open Webpage",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          color: Color(0xFFd9e021),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 10,bottom: 7.5, right: 10, top: 5),
                      color: Color(0xFF303440),
                      onPressed:() {
                        openURL2();
                      }
                  ),





                ],
              ),


            )

          ]
      )


    );}
}

