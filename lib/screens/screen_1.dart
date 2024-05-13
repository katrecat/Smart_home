import 'package:flutter/material.dart';
import '../widgets/CustomSensorBlock.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(248, 248, 248, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 57),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Container(
                    width: 43,
                    height: 43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(17, 17, 17, 1),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Kasia',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Lexend',
                      fontSize: 20,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.05,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(245, 245, 245, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Temperature', style: TextStyle(fontSize: 17, color: Color.fromRGBO(25, 25, 25, 1))),
                          Text('21°С', style: TextStyle(fontSize: 18, color: Color.fromRGBO(
                              26, 125, 54, 1.0))),
                          SizedBox(height: 5),
                          Text('Humidity', style: TextStyle(fontSize: 17, color: Color.fromRGBO(25, 25, 25, 1))),
                          Text('30 %', style: TextStyle(fontSize: 18, color: Color.fromRGBO(
                              26, 125, 54, 1.0))),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    Image.asset('assets/images/Thunderillustration1.png', width: 107, height: 101, fit: BoxFit.fitWidth),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18),
            SizedBox(
              height: 34,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                        _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: index == _selectedIndex ? Colors.grey.withOpacity(0.5) : null,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Center(
                            child: Text(
                              index == 0 ? 'Living Room' : index == 1 ? 'Bedroom' : index == 2 ? 'Kitchen' : 'Bathroom',
                              style: TextStyle(
                                fontSize: 17,
                                color: index == _selectedIndex ? Colors.black : Color.fromRGBO(131, 138, 143, 1),
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Lexend',
                                letterSpacing: 0,
                                height: 1.2352941176470589,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: 4,
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return AnimatedOpacity(
                    duration: Duration(milliseconds: 300),
                    opacity: _selectedIndex == index ? 1.0 : 0.0,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 18, 0, 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _selectedIndex == 0
                                ? Wrap(
                                children: [
                                  CustomSensorBlock()
                        ],
                            )
                                : _selectedIndex == 1
                                ? Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                CustomSensorBlock(),
                                CustomSensorBlock(),
                              ],
                            )
                                : _selectedIndex == 2
                                ? Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                CustomSensorBlock(),
                                CustomSensorBlock(),
                                CustomSensorBlock(),
                                CustomSensorBlock(),
                              ],
                            )
                                : _selectedIndex == 3
                                ? Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                CustomSensorBlock(),
                                CustomSensorBlock(),
                                CustomSensorBlock(),
                              ],
                            )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
