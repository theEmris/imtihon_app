// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './tanishuv.dart';
class Kirish extends StatefulWidget {
  const Kirish({Key? key}) : super(key: key);

  @override
  _KirishState createState() => _KirishState();
}

class _KirishState extends State<Kirish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: InkWell(
        child: Container(
            color: Colors.white,
            height: 200,
            width: 200,
            child: Image(image: AssetImage("assets/UIhome.jpg"))),
        onTap: () {
          debugPrint("bosildi");
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Tanishuv()));
        },
      )),
    );
  }
}
