import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  myfun(num, Type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(Type),
        ),
      ],
    );
  }

  secondfun(icon, tech) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 105,
              height: 115,
              child: Card(
                margin: EdgeInsets.all(0),
                color: Color.fromARGB(255, 42, 41, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        tech,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                child: Text(
                  "Projects",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'project');
                },
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: TextButton(
                child: Text(
                  "About Me",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {  Navigator.pushNamed(context, 'about');},
              ),
              value: 2,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset('assets/images/car.png'),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(children: [
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
                ]),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myfun('4', 'Projects'),
                    myfun('10', 'Clients'),
                    myfun('20', 'Messages'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Specialized In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        secondfun(Icons.android, 'Android'),
                        secondfun(Icons.sports_cricket, 'Cricket'),
                        secondfun(Icons.games ,'Gaming'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        secondfun(Icons.calculate, 'Maths'),
                        secondfun(Icons.edit, 'Editing'),
                        secondfun(Icons.sports_esports, 'Esports'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        secondfun(Icons.flutter_dash, 'Flutter'),
                        secondfun(Icons.payment ,'0 rs'),
                        secondfun(Icons.electric_bike, 'Cycle'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
