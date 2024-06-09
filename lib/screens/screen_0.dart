import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import SvgPicture class
import 'dart:async'; // Import Timer class
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts package

class Screen0 extends StatefulWidget {
  @override
  _Screen0State createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  @override
  void initState() {
    super.initState();
    // Start a Timer that navigates to Screen1 after 5 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/screen1');
    });
  }

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
            top: 471,
            left: 18,
            child: Text(
              'Easily Control Your Home',
              textAlign: TextAlign.left,
              style: GoogleFonts.lexend(
                textStyle: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 40,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal, // Change this to FontWeight.w400 if you want normal weight
                  height: 0.525,
                ),
              ),
            ),
          ),
          Positioned(
            top: 87,
            left: 15,
            child: Container(
              width: 345.2843017578125,
              height: 337,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 20,
                    left: 40,
                    child: Container(
                      width: 259,
                      height: 272,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(185.5),
                          topRight: Radius.circular(185.5),
                          bottomLeft: Radius.circular(185.5),
                          bottomRight: Radius.circular(185.5),
                        ),
                        color: Color.fromRGBO(0, 21, 36, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 345.2843017578125,
                      height: 337,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: 175,
                              height: 188,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(255, 103, 18, 0.1),
                                    offset: Offset(0, 44),
                                    blurRadius: 74,
                                  )
                                ],
                                image: DecorationImage(
                                  image: AssetImage('assets/images/Transparent2.png'),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 2.2316107749938965,
                            left: 171.7877960205078,
                            child: Container(
                              width: 173.49652099609375,
                              height: 188.07212829589844,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/Transparent.png'),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 149.8682403564453,
                            left: 81.98334503173828,
                            child: Container(
                              width: 177.25794982910156,
                              height: 187.1317596435547,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/Transparent3.png'),
                                  fit: BoxFit.fitWidth,
                                ),
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
          ),
          Positioned(
            top: 562,
            left: 18,
            child: Text(
              'Manage your home from anytime, anywhere.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(111, 121, 126, 1),
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.3125,
              ),
            ),
          ),
        ],
      ),
    );
  }
}