import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 812,
      decoration: BoxDecoration(
        color: Color.fromRGBO(248, 248, 248, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(),
          ),
          Positioned(
            top: 57,
            left: 18,
            child: Container(
              decoration: BoxDecoration(),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 43,
                    height: 43,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 43,
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Color.fromRGBO(17, 17, 17, 1),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 43,
                            height: 43,
                            child: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),

                  Container(
                    width: 232.40550231933594,
                    height: 43,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Text(
                            'Kasia',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Lexend',
                              fontSize: 20,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.05,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 22,
                          left: 0,
                          child: Text(
                            'Monday, 20 Jan',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(131, 137, 143, 1),
                              fontFamily: 'Lexend',
                              fontSize: 14,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 24.594497680664062,
                    height: 24.594497680664062,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(1, 0, 0, 0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 2.049647569656372,
                          left: 2.5617544651031494,
                          child: Container(
                            width: 19.470643997192383,
                            height: 20.49541473388672,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 19.470643997192383,
                                    height: 20.49541473388672,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: SvgPicture.asset(
                                            'assets/images/vector.svg',
                                            semanticsLabel: 'vector',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 125.0),
              decoration: BoxDecoration(
                borderRadius : BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color : Color.fromRGBO(245, 245, 245, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 21, vertical: 11),
              child: Row(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(

                    ),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Text('Temperature', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(25, 25, 25, 1),
                          fontFamily: 'Lexend',
                          fontSize: 17,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1.2352941176470589
                      ),), SizedBox(height : 5),
                        Text('21°С', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(9, 213, 66, 1),
                            fontFamily: 'Lexend',
                            fontSize: 18,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.1666666666666667
                        ),), SizedBox(height : 5),
                        Text('Humidity', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(25, 25, 25, 1),
                            fontFamily: 'Lexend',
                            fontSize: 17,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.2352941176470589
                        ),), SizedBox(height : 5),
                        Text('30 %', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(9, 213, 66, 1),
                            fontFamily: 'Lexend',
                            fontSize: 18,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.1666666666666667
                        ),),
                      ],
                    ),
                  ), SizedBox(width : 89),
                  Container(
                      width: 107,
                      height: 101,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/Thunderillustration1.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  ),

                ],
              ),
            ),
          ),
          Positioned(
            top: 256,
            left: 20,
            child: Container(
              width: 323,
              height: 34,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Text(
                      'Living Room',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Lexend',
                        fontSize: 17,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.2352941176470589,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 152,
                    child: Text(
                      'Bedroom',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(131, 138, 143, 1),
                        fontFamily: 'Lexend',
                        fontSize: 15,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.4,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 265,
                    child: Text(
                      'Kitchen',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(131, 138, 143, 1),
                        fontFamily: 'Lexend',
                        fontSize: 15,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.4,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 34,
                    left: 50,
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(3.5),
                          topRight: Radius.circular(3.5),
                          bottomLeft: Radius.circular(3.5),
                          bottomRight: Radius.circular(3.5),
                        ),
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 34,
                    left: 163,
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(3.5),
                          topRight: Radius.circular(3.5),
                          bottomLeft: Radius.circular(3.5),
                          bottomRight: Radius.circular(3.5),
                        ),
                        color: Color.fromRGBO(131, 138, 143, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 34,
                    left: 276,
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(3.5),
                          topRight: Radius.circular(3.5),
                          bottomLeft: Radius.circular(3.5),
                          bottomRight: Radius.circular(3.5),
                        ),
                        color: Color.fromRGBO(131, 138, 143, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 20,
            child: Container(
              width: 327,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.5),
                  topRight: Radius.circular(22.5),
                  bottomLeft: Radius.circular(22.5),
                  bottomRight: Radius.circular(22.5),
                ),
                color: Color.fromRGBO(226, 226, 226, 0.5),
              ),
            ),
          ),
          Positioned(
            top: 305,
            left: 25,
            child: Container(
              width: 26,
              height: 34,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 8.5,
                    left: 0,
                    child: SvgPicture.asset(
                      'assets/images/television.svg',
                      semanticsLabel: 'television',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 309,
            left: 62,
            child: Text(
              'Television',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Lexend',
                fontSize: 17,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.2352941176470589,
              ),
            ),
          ),
          Positioned(
            top: 309,
            left: 271,
            child: Text(
              'Bedroom',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(131, 138, 143, 1),
                fontFamily: 'Lexend',
                fontSize: 15,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.4,
              ),
            ),
          ),
          Positioned(
            top: 365,
            left: 20,
            child: Container(
              width: 327,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.5),
                  topRight: Radius.circular(22.5),
                  bottomLeft: Radius.circular(22.5),
                  bottomRight: Radius.circular(22.5),
                ),
                color: Color.fromRGBO(226, 226, 226, 0.5),
              ),
            ),
          ),
          Positioned(
            top: 370,
            left: 25,
            child: Container(
              width: 26,
              height: 34,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: SvgPicture.asset(
                      'assets/images/ac.svg',
                      semanticsLabel: 'ac',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 374,
            left: 62,
            child: Text(
              'Air Conditioner',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Lexend',
                fontSize: 17,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.2352941176470589,
              ),
            ),
          ),
          Positioned(
            top: 374,
            left: 271,
            child: Text(
              'Living Room',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(131, 138, 143, 1),
                fontFamily: 'Lexend',
                fontSize: 15,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.4,
              ),
            ),
          ),
          Positioned(
            top: 430,
            left: 20,
            child: Container(
              width: 327,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.5),
                  topRight: Radius.circular(22.5),
                  bottomLeft: Radius.circular(22.5),
                  bottomRight: Radius.circular(22.5),
                ),
                color: Color.fromRGBO(226, 226, 226, 0.5),
              ),
            ),
          ),
          Positioned(
            top: 435,
            left: 25,
            child: Container(
              width: 26,
              height: 34,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: SvgPicture.asset(
                      'assets/images/standing-lamp.svg',
                      semanticsLabel: 'standing-lamp',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 439,
            left: 62,
            child: Text(
              'Standing Lamp',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Lexend',
                fontSize: 17,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.2352941176470589,
              ),
            ),
          ),
          Positioned(
            top: 439,
            left: 271,
            child: Text(
              'Living Room',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(131, 138, 143, 1),
                fontFamily: 'Lexend',
                fontSize: 15,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.4,
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 135,
            child: Container(
              width: 109,
              height: 109,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                  bottomLeft: Radius.circular(55),
                  bottomRight: Radius.circular(55),
                ),
                color: Color.fromRGBO(230, 230, 230, 1),
              ),
            ),
          ),
          Positioned(
            top: 565,
            left: 155,
            child: Text(
              'Rooms',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Lexend',
                fontSize: 30,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.2352941176470589,
              ),
            ),
          ),
          Positioned(
            top: 625,
            left: 48,
            child: Container(
              width: 93,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1),
                  topRight: Radius.circular(1),
                  bottomLeft: Radius.circular(1),
                  bottomRight: Radius.circular(1),
                ),
                color: Color.fromRGBO(205, 205, 205, 1),
              ),
            ),
          ),
          Positioned(
            top: 705,
            left: 25,
            child: Container(
              width: 160,
              height: 160,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 10,
                    left: 15,
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(65),
                          topRight: Radius.circular(65),
                          bottomLeft: Radius.circular(65),
                          bottomRight: Radius.circular(65),
                        ),
                        color: Color.fromRGBO(230, 230, 230, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 860,
            left: 35,
            child: Text(
              'Living Room',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Lexend',
                fontSize: 30,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.2352941176470589,
              ),
            ),
          ),
          Positioned(
            top: 995,
            left: 25,
            child: Container(
              width: 160,
              height: 160,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 10,
                    left: 15,
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(65),
                          topRight: Radius.circular(65),
                          bottomLeft: Radius.circular(65),
                          bottomRight: Radius.circular(65),
                        ),
                        color: Color.fromRGBO(230, 230, 230, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 1150,
            left: 35,
            child: Text(
              'Bedroom',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Lexend',
                fontSize: 30,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.2352941176470589,
              ),
            ),
          ),
          Positioned(
            top: 1285,
            left: 25,
            child: Container(
              width: 160,
              height: 160,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 10,
                    left: 15,
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(65),
                          topRight: Radius.circular(65),
                          bottomLeft: Radius.circular(65),
                          bottomRight: Radius.circular(65),
                        ),
                        color: Color.fromRGBO(230, 230, 230, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 1440,
            left: 35,
            child: Text(
              'Kitchen',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Lexend',
                fontSize: 30,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.2352941176470589,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
