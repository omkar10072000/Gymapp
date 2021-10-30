import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/BMI/meal.dart';
import 'package:pro/BMI/meal_detail_screen.dart';
import 'package:pro/BMI/meal_sites_screen.dart';
import 'package:animations/animations.dart';
import 'package:intl/intl.dart';


class shapeup5 extends StatelessWidget {
  final String namee;
  final BMImodel;
  final bool isDude;
  shapeup5({this.namee, this.BMImodel, this.isDude});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final today = DateTime.now();
    var parts = namee.split(' ');
    var part1 = parts[0];

    return Scaffold(
      backgroundColor:  Colors.grey[850],
      body: Stack(
        children:
        [
          Positioned(
            top: 0,
            height: height * 0.17 ,
            left: 0,
            right: 0,
            child: ClipRRect(
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
                        radius: 28.0,
                      ),

                    )
                  ],
                ),
              )
            )
          ),
          Positioned(
              top: height * 0.2,
              left: 0,
              right: 0,
              child: Container(
                height: height * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8,
                        left: 32,
                        right: 16,

                      ),
                      child: Text(
                        "Some Healthy Meals",
                        style: const TextStyle(color: Colors.greenAccent, fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 32,
                            ),
                            for (int i = 0; i < meals.length; i++)
                              _MealCard(
                                meal: meals[i],
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
              ),
            )
          ),
          Positioned(
            top: height* 0.68 ,
            left: 0,
            right: 0,
            child: Container(

              height: height*0.25,
              margin: EdgeInsets.only(left: 0,right: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color:  Colors.grey[400],
              ),
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top:20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Diet & Workout For You",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        fontFamily: '',
                        letterSpacing: 0,
                        color: Colors.blueGrey,
                      ),),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                             decoration: BoxDecoration(
                               color: const Color(0xFF303440),
                               borderRadius: BorderRadius.all(Radius.circular(20)),
                             ),
                             padding: const EdgeInsets.all(10),
                             child: Image.asset(
                                 'assets/meal.png',
                                 width: 85,
                                 height: 85,
                                 color: Color(0xFFd9e021)
                             ),

                           ),
                           SizedBox(
                            width: 20,
                           ),
                           Container(

                             decoration: BoxDecoration(
                               color: const Color(0xFF303440),
                               borderRadius: BorderRadius.all(Radius.circular(20)),
                             ),
                             padding: const EdgeInsets.all(10),
                             child: Image.asset(
                                 'assets/chest1.png',
                                  width: 85,
                                  height: 85,
                               color: Color(0xFFd9e021),
                             ),

                           ),
                           SizedBox(
                             width: 10,
                           )
                         ],
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MealSitesScreen(bmimm: BMImodel, name1: namee, isBloke: isDude,) ));
                },
              ),
            ),
          )


        ],
      )

    );
  }
}




class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key key, @required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(
        right: 15,
        bottom: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: OpenContainer(
                closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                transitionDuration: const Duration(milliseconds: 1000),
                openBuilder: (context, _) {
                  return MealDetailScreen(
                    meal: meal,
                  );
                },
                closedBuilder: (context, VoidCallback openContainer) {
                  return GestureDetector(
                    onTap: openContainer,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        meal.imagePath,
                        width: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,

              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      meal.mealTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Text(
                      meal.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "${meal.kiloCaloriesBurnt} kcal",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          size: 15,
                          color: Colors.black12,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "${meal.timeTaken} min",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


