import 'package:flutter/material.dart';
import './home.dart';

class Delevery extends StatefulWidget {
  const Delevery({Key? key}) : super(key: key);

  @override
  _DeleveryState createState() => _DeleveryState();
}

class _DeleveryState extends State<Delevery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage(
              "https://gogoacarrentals.com/wp-content/uploads/2019/02/tick.gif"),
        ),
        Text(
          "Congratulations!!!",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "your order have been taken and is being attended to",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(
              "Track order",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                "Continue shopping",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (cotext) => HomePage1(
                    username: "Tony",
                  )));
            },
          ),
        ),
      ],
    )));
  }
}
