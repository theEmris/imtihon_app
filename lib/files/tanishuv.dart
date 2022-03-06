import 'package:flutter/material.dart';
import './ism.dart';
class Tanishuv extends StatefulWidget {
  const Tanishuv({Key? key}) : super(key: key);

  @override
  _TanishuvState createState() => _TanishuvState();
}

class _TanishuvState extends State<Tanishuv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: Stack(
        children: [
          Positioned.fill(
              child: Image(
            image: NetworkImage(
                "https://i.pinimg.com/564x/a8/f8/7d/a8f87d4e9db860fece79a18c5802fe31.jpg"),
            fit: BoxFit.cover,
          ))
        ],
      )),
      Expanded(
          child: Container(
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                      "We deliver the best and freshest fruit salad in town.Order for a combo today!!!",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2),
                  child: InkWell(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: double.infinity,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.amber,
                        ),
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=> IsmSorash())
                              );
                            },
                            child: Text("Let's Continue !",style: TextStyle(fontSize: 20),))),
                  ),
                )
              ],
            )),
      )),
    ]));
  }
}
