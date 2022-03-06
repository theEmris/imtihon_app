import 'package:flutter/material.dart';
import './delevery.dart';

class Card1 extends StatefulWidget {
  String? sonni;
  Card1({Key? key, this.sonni}) : super(key: key);

  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Card Holder's name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: Form(
                      child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.cyanAccent),
                        ),
                        hintText: "Adolphus Chris"),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Card Number",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: Form(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.cyanAccent),
                        ),
                        hintText: "1234 5678 9012 1314"),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(hintText: "10/30"),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CCV",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(hintText: "${widget.sonni}\$"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(40),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>
                            Delevery())
                          );
                        },
                        child: Text("Complete Order"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
