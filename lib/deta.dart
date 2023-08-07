import 'package:flutter/material.dart';

class deta extends StatefulWidget {
  const deta({super.key});

  @override
  State<deta> createState() => _detaState();
}

class _detaState extends State<deta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff22374c),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff22374c),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 50),
            Image.asset(
              'images/IMG_6212.jpg',
              height: 350,
              width: 3950,
            ),
            SizedBox(height: 30),
            Image.asset(
              'images/IMG_6211.jpg',
              height: 350,
            ),
            SizedBox(height: 30),
            Image.asset(
              'images/IMG_6210.jpg',
              height: 350,
            ),
            SizedBox(height: 30),
            Image.asset(
              'images/IMG_6209.jpg',
              height: 350,
            ),
            SizedBox(height: 100),
          ]),
        ));
  }
}
