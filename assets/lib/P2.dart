import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pro/P4.dart';

Widget ProfilePages() {
  //  StorageReference ref = FirebaseStorage.instance.ref();
  final ref = FirebaseStorage.instance.ref().child(
      'favpng_push-up-strength-training-exercise-plank-triceps-brachii-muscle.png');
  return FutureBuilder(
      future: ref.getDownloadURL(),
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          print("\n\n\n\n\n\n\n" + snapshot.data + "\n\n\n\n\n\n");
          return new CachedNetworkImage(
            height: 110,
            width: 140,
            fit: BoxFit.fill,
            imageUrl: snapshot.data,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          );
        }
        return CircularProgressIndicator();
      });
}

Widget ProfilePages2() {
  //  StorageReference ref = FirebaseStorage.instance.ref();
  final ref = FirebaseStorage.instance.ref().child('1613103352729.png');
  return FutureBuilder(
      future: ref.getDownloadURL(),
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          print("\n\n\n\n\n\n\n" + snapshot.data + "\n\n\n\n\n\n");
          return new CachedNetworkImage(
            height: 130,
            width: 140,
            fit: BoxFit.fill,
            imageUrl: snapshot.data,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          );
        }
        return CircularProgressIndicator();
      });
}

class ProfilePage extends StatefulWidget {
  ProfilePage() {}

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File _image;
  var s;

  get color => null;
  @override
  Widget build(BuildContext context) {
    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        print('Image Path $_image');
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 63, 255, 1),
        title: Text(
          '            Workout',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            //height: 4.0,
            //  width: 100.0,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(alignment: Alignment.centerRight, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 400.0, 110.0, 0.0),
            child: Expanded(
              child: CachedNetworkImage(
                height: 150,
                width: 150,
                fit: BoxFit.fill,
                imageUrl:
                    "https://fscomps.fotosearch.com/compc/CSP/CSP323/bodybuilding-powerlifting-kettlebell-clipart__k59912354.jpg",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 100.0),
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Card(
                      shape: StadiumBorder(),
                      elevation: 40.0,
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
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => User_interface()));
                          },
                          child: ListTile(
                            contentPadding: EdgeInsets.all(40.0),
                            //  tileColor: Colors.blue[200],
                            //  focusColor: Colors.blue[300],

                            shape: StadiumBorder(),
                            // leading: ProfilePages(),
                            leading: Text(
                              'Home Workout',
                              textScaleFactor: 1.0,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                //    height: 4.0,
                                //  width: 100.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ProfilePages(),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => User_interface()));
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Card(
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
                            contentPadding: EdgeInsets.all(40.0),
                            //tileColor: Colors.blue[200],
                            // focusColor: Colors.blue[300],

                            shape: StadiumBorder(),
                            // leading: ProfilePages(),
                            leading: Text(
                              'Gym Workout',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                //    height: 4.0,
                                //  width: 100.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ProfilePages2(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
