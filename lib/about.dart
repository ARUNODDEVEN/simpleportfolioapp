import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class myabout extends StatefulWidget {
  const myabout({Key? key}) : super(key: key);

  @override
  State<myabout> createState() => _myaboutState();
}

class _myaboutState extends State<myabout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Image.asset('assets/images/car.png'),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(children: [
                Text(
                  "Hello I am",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "OddEVEN",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Text(
                  "Software Developer",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 170,
                ),
                SizedBox(
                  width: 120,
                  child: TextButton(
                    onPressed: (() {}),
                    child: Text("Hire Me"),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white, primary: Colors.black),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        onPressed: () async {
                          const url = 'https://www.instagram.com/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.youtube,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        onPressed: () async {
                          const url = 'https://www.youtube.com/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        onPressed: () async {
                          const url = 'https://www.facebook.com/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        onPressed: () async {
                          const url = 'https://www.linkedin.com/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.github,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        onPressed: () async {
                          const url = 'https://www.github.com/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
