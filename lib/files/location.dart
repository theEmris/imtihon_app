import 'package:flutter/material.dart';
import './delevery.dart';
import './card.dart';

class Location extends StatefulWidget {
  String? sonni;
  Location({Key? key, this.sonni}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
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
                    "Delivery address",
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
                        hintText: "10th avenue,Lekki,Lagos State"),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Number we can call",
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
                        hintText: "09090605708"),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Delevery()));
                          },
                          child: Text(
                            "Pay on delivery",
                            style: TextStyle(fontSize: 22),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.amberAccent),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (contex) => Card1(sonni: widget.sonni,)));
                            },
                            child: Text(
                              "Pay with card",
                              style: TextStyle(fontSize: 22),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.amberAccent)),
                      ),
                    ],
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
