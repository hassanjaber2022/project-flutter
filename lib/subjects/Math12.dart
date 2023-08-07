import 'package:firebase/screens/videoph12.dart';
import 'package:flutter/material.dart';

class Math12 extends StatefulWidget {
  const Math12({super.key, required String studentGrade, required String text});

  @override
  State<Math12> createState() => _Math12State();
}

class _Math12State extends State<Math12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8998A4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/Screenshot 2023-08-02 at 10.05.23 AM.png'),
            Container(
                width: 440,
                height: 1210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xff22374c), Color(0xff4a6880)],
                    )),
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
                          // Image.asset(
                          //   'images/atom.png',
                          //   height: 130,
                          // ),
                          SizedBox(width: 15),
                          Text("12",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 90,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          SizedBox(width: 25),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                              "Math",
                              style: TextStyle(
                                  fontSize: 33,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        ]),
                    SizedBox(height: 25),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MyApp();
                          },
                        ));
                      },
                      child: Container(
                          child: Row(
                            children: [
                              SizedBox(width: 25),
                              Text('1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff4A6880),
                                  )
                                  // color: Colors.white,
                                  ),
                              SizedBox(width: 55),
                              Text('Lesson one',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4A6880),
                                  )
                                  // color: Colors.white,
                                  ),
                              SizedBox(width: 55),
                            ],
                          ),
                          width: 340,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffffc132))),
                    ),
                    SizedBox(height: 25),
                    SizedBox(height: 25),
                    Container(
                        child: Row(
                          children: [
                            SizedBox(width: 25),
                            Text('2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                            Text('Lesson two',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                          ],
                        ),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffffc132))),
                    SizedBox(height: 25),
                    SizedBox(height: 25),
                    Container(
                        child: Row(
                          children: [
                            SizedBox(width: 25),
                            Text('3',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                            Text('Third lesson',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                          ],
                        ),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffffc132))),
                    SizedBox(height: 25),
                    SizedBox(height: 25),
                    Container(
                        child: Row(
                          children: [
                            SizedBox(width: 25),
                            Text('4',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                            Text('Fourth lesson',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                          ],
                        ),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffffc132))),
                    SizedBox(height: 25),
                    SizedBox(height: 25),
                    Container(
                        child: Row(
                          children: [
                            SizedBox(width: 25),
                            Text('5',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                            Text('Fifth lesson',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                          ],
                        ),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffffc132))),
                    SizedBox(height: 25),
                    SizedBox(height: 25),
                    Container(
                        child: Row(
                          children: [
                            SizedBox(width: 25),
                            Text('6',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                            Text('Sixth lesson',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                          ],
                        ),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffffc132))),
                    SizedBox(height: 25),
                    SizedBox(height: 25),
                    Container(
                        child: Row(
                          children: [
                            SizedBox(width: 25),
                            Text('7',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                            Text('Seventh lesson',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                          ],
                        ),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffffc132))),
                    SizedBox(height: 25),
                    SizedBox(height: 25),
                    Container(
                        child: Row(
                          children: [
                            SizedBox(width: 25),
                            Text('8',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                            Text('Lesson eight',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 29,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A6880),
                                )
                                // color: Colors.white,
                                ),
                            SizedBox(width: 55),
                          ],
                        ),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffffc132))),
                    SizedBox(height: 25),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  imagee({required Image child}) {}
}
