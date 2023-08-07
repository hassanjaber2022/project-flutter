import 'package:firebase/screens/grade_11.dart';
import 'package:flutter/material.dart';

import '3lme.dart';
import 'grade_10.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(20, 213, 214, 213),
          leading: Icon(Icons.radio_button_checked),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Choose your",
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color(0xff22374c),
                height: 30 / 18,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "Course Of study",
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color(0xff22374c),
                height: 30 / 16,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return uPage();
                  },
                ));
              },
              child: Center(
                child: Container(
                    width: 400,
                    height: 210,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.,
                        children: [
                          Text('12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 100,
                              )),
                          SizedBox(height: 7),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              'Twelfth Grade',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
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
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return Grade11Page(studentGrade: "Grade 11");
                  },
                ));
              },
              child: Container(
                  width: 400,
                  height: 210,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        Text('11',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 100,
                            )),
                        SizedBox(height: 7),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            'Eleventh grade',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
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
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return Grade10Page(studentGrade: "Grade 10");
                  },
                ));
              },
              child: Container(
                  width: 400,
                  height: 210,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        Text('10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 100,
                            )),
                        SizedBox(height: 7),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            'Tenth grade',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
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
            // SizedBox(height: 15),
            // InkWell(
            //   onTap: () {
            //     Navigator.pushReplacement(context, MaterialPageRoute(
            //       builder: (context) {
            //         return Grade10Page(studentGrade: "Grade 10");
            //       },
            //     ));
            //   },
            //   child: Container(
            //       width: 400,
            //       height: 210,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(34),
            //           gradient: LinearGradient(
            //             begin: Alignment.topRight,
            //             end: Alignment.bottomLeft,
            //             colors: [Color(0xff22374c), Color(0xff4a6880)],
            //           ))),
            // ),
            // ElevatedButton(onPressed: () {}, child: Text("Test"))
          ],
        ),
      ),
    );
  }
}

List<String> grade = ["Elementary", "High School"];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = grade.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: grade.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
