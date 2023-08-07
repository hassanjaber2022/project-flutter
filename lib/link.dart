import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class link extends StatefulWidget {
  const link({super.key});

  @override
  State<link> createState() => _linkState();
}

class _linkState extends State<link> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
            text: TextSpan(children: [
          TextSpan(text: "go to nnn", style: TextStyle(color: Colors.black)),
          TextSpan(
              text: "tab here",
              style: TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  var url = "https://results.moe.edu.kw/PResult/PResult";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Cannot load Url";
                  }
                })
        ])),
      ),
    );
  }

  canLaunch(String url) {}

  launch(String url) {}
}
