import 'package:firebase/deta.dart';
import 'package:firebase/link.dart';
import 'package:firebase/screens/terminal.dart';
import 'package:firebase/subjects/English12.dart';
import 'package:firebase/subjects/Math12.dart';
import 'package:firebase/subjects/physics12.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Grade12Page extends StatefulWidget {
  const Grade12Page({super.key, required this.studentGrade});

  final String studentGrade;

//   int currentIndex = index;

//   void goToPage(index) {
//     setState(() {
//     currentIndex = index;
//   });
// }

  @override
  State<Grade12Page> createState() => _Grade12PageState();
}

List<Widget> homeScreens = [
  English12(
    studentGrade: '١٢',
  ),
  Math12(
    text: '',
    studentGrade: '',
  ),
  physics12(
    studentGrade: '',
  ),
  link()
];

// List<Widget> homeScreens = [ English12(), Math12(), physics12(), link()];
class _Grade12PageState extends State<Grade12Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              backgroundColor: Colors.white,
              color: Color(0xff22374c),
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xff22374c),
              gap: 8,
              onTabChange: (Grade12Page) {
                print(Grade12Page);
              },
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
//                   onTabChange: (index){
// homeScreens[index]
// }
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: 'Profile',
                ),
              ],
            ),
          ),
        ),
        // List _pages = [

        //   link(),

        //   Math12(),

        //   physics12(),

        //   English12(),
        // ],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Choose your",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff22374c),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("Subject Of study",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff22374c),
                  )),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 217, 217),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search of Subject',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("Choose your activity",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff22374c),
                  )),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => terminal(),
                      ),
                    );
                  },
                  child: Container(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Image.asset('images/calendar-5.png')),
                      width: 118,
                      height: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff22374c)),
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xffffc132))),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return deta();
                      },
                    ));
                  },
                  child: Container(
                      child: Image.asset(
                        'images/study-2.png',
                        height: 10,
                      ),
                      width: 118,
                      height: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff22374c)),
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xffffc132))),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return link();
                      },
                    ));
                  },
                  child: Container(
                      child: Image.asset(
                        'images/graduation-hat-2.png',
                        height: 10,
                      ),
                      width: 118,
                      height: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff22374c)),
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xffffc132))),
                ),
              ],
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("Choose Subject",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff22374c),
                  )),
            ),
            SizedBox(height: 60),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => physics12(
                            studentGrade: 'h',
                          ),
                        ),
                      );
                    },
                    child: Container(
                        width: 192,
                        height: 230,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              SizedBox(height: 15),
                              Image.asset(
                                'images/atom.png',
                                height: 130,
                              ),
                              SizedBox(height: 25),
                              Text(
                                'Physics',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ]),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xff22374c), Color(0xff4a6880)],
                            ))),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => English12(
                            studentGrade: 'h',
                          ),
                        ),
                      );
                    },
                    child: Container(
                        width: 192,
                        height: 230,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              SizedBox(height: 15),
                              Image.asset(
                                'images/e.png',
                                height: 130,
                              ),
                              SizedBox(height: 25),
                              Text(
                                'English',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ]),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xff22374c), Color(0xff4a6880)],
                            ))),
                  ),
                  SizedBox(width: 20),
                  Container(
                      width: 192,
                      height: 230,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.,
                          children: [
                            SizedBox(height: 15),
                            Image.asset(
                              'images/plant-cell.png',
                              height: 130,
                            ),
                            SizedBox(height: 25),
                            Text(
                              'Biology',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xff22374c), Color(0xff4a6880)],
                          ))),
                  SizedBox(width: 20),
                  Container(
                      width: 192,
                      height: 230,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.,
                          children: [
                            SizedBox(height: 15),
                            Image.asset(
                              'images/flask.png',
                              height: 130,
                            ),
                            SizedBox(height: 25),
                            Text(
                              'Chemistry',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xff22374c), Color(0xff4a6880)],
                          ))),
                  SizedBox(width: 20),
                  Container(
                      width: 192,
                      height: 230,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.,
                          children: [
                            SizedBox(height: 15),
                            Image.asset(
                              'images/arabic-language.png',
                              height: 130,
                            ),
                            SizedBox(height: 25),
                            Text(
                              'Arabic',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xff22374c), Color(0xff4a6880)],
                          ))),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Math12(
                            studentGrade: '12',
                            text: '12',
                          );
                        },
                      ));
                    },
                    child: Container(
                        width: 192,
                        height: 230,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              SizedBox(height: 15),
                              Image.asset(
                                'images/123-2.png',
                                height: 130,
                              ),
                              SizedBox(height: 25),
                              Text(
                                'Math',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ]),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xff22374c), Color(0xff4a6880)],
                            ))),
                  ),
                  SizedBox(width: 20),
                  Container(
                      width: 192,
                      height: 230,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.,
                          children: [
                            SizedBox(height: 15),
                            Image.asset(
                              'images/globe.png',
                              height: 130,
                            ),
                            SizedBox(height: 25),
                            Text(
                              'Geography',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xff22374c), Color(0xff4a6880)],
                          ))),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ));
  }
}
