import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class myproject extends StatefulWidget {
  const myproject({Key? key}) : super(key: key);

  @override
  State<myproject> createState() => _myprojectState();
}

class _myprojectState extends State<myproject> {
  mypro(lang, titl, des, star) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color.fromARGB(255, 41, 41, 41),
        child: Container(
          margin: EdgeInsets.only(right: 20, left: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                titl,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                des,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 10,
                  ),
                  Text(
                    star,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'git');
                    },
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text("Projects"),
        backgroundColor: Color.fromARGB(255, 54, 54, 54),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mypro("FLUTTER", "BLOOD BANK", "Health Related App", '10'),
              mypro("FLUTTER", "FLAPPY BIRD", "GAME", '8'),
              mypro("FLUTTER", "SKIP", "EXTENSION", '9'),
              mypro("FLUTTER", "CALC", "CALCULATOR", '6'),
            ],
          ),
        ),
      ),
    );
  }
}
