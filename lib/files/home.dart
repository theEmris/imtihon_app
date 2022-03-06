import 'package:flutter/material.dart';
import './info_page.dart';
import './basket.dart';

class HomePage1 extends StatefulWidget {
  String? username;
  Color textrangi = Colors.blueGrey;

  HomePage1({Key? key, this.username}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List forBasket = [];
  List? lst = lst_recomended;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: EXPANDED1(context),
              color: Colors.white,
            ),
            flex: 4,
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: ListView.builder(
                        itemExtent: 200,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              lst_recomended[index]["rasmi"]),
                                          fit: BoxFit.cover),
                                      color: Colors.blueAccent,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                  ),
                                  Positioned(
                                      right: 5,
                                      top: 5,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.blueAccent,
                                        ),
                                        onPressed: () {},
                                      )),
                                  Positioned(
                                    child: Text(
                                      lst_recomended[index]["desk"],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blueAccent),
                                    ),
                                    bottom: 40,
                                  ),
                                  Positioned(
                                      right: 5,
                                      bottom: 5,
                                      child: IconButton(
                                        icon: Icon(Icons.add_circle),
                                        onPressed: () {
                                          setState(() {
                                            forBasket.add(
                                              lst_recomended[index],
                                            );
                                          });
                                        },
                                      )),
                                  Positioned(
                                      left: 10,
                                      bottom: 10,
                                      child: Text(
                                        "${lst_recomended[index]["narxi"].toString()} \$",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ))
                                ],
                              ));
                        },
                        itemCount: lst_recomended.length,
                      ),
                      
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    debugPrint("Bosildi text buttonga");
                                    setState(() {
                                      widget.textrangi = Colors.redAccent;
                                      lst = lst_Hottest;
                                    });
                                  },
                                  child: Text(
                                    "Hottest",
                                    style: TextStyle(
                                        fontSize: 20, color: widget.textrangi),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.textrangi = Colors.yellowAccent;
                                      lst = Popular;
                                    });
                                  },
                                  child: Text(
                                    "Popular",
                                    style: TextStyle(
                                        fontSize: 20, color: widget.textrangi),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.textrangi = Colors.blueAccent;
                                      lst = New_Combo;
                                    });
                                  },
                                  child: Text(
                                    "New_Combo",
                                    style: TextStyle(
                                        fontSize: 20, color: widget.textrangi),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.textrangi = Colors.green;
                                      lst = Top;
                                    });
                                  },
                                  child: Text(
                                    "Top",
                                    style: TextStyle(
                                        fontSize: 20, color: widget.textrangi),
                                  )),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: ListView.builder(
                        itemExtent: 200,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              lst![index]["rasmi"]),
                                          fit: BoxFit.cover),
                                      color: Colors.blueAccent,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                  ),
                                  Positioned(
                                      right: 5,
                                      top: 5,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.blueAccent,
                                        ),
                                        onPressed: () {},
                                      )),
                                  Positioned(
                                    child: Text(
                                      lst![index]["desk"],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blueAccent),
                                    ),
                                    bottom: 40,
                                  ),
                                  Positioned(
                                      right: 5,
                                      bottom: 5,
                                      child: IconButton(
                                        icon: Icon(Icons.add_circle),
                                        onPressed: () {
                                          setState(() {
                                            forBasket.add(lst![index]);
                                          });
                                        },
                                      )),
                                  Positioned(
                                      left: 10,
                                      bottom: 10,
                                      child: Text(
                                        "${lst![index]["narxi"].toString()} \$",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ))
                                ],
                              ));
                        },
                        itemCount: lst!.length,
                      ),
                    ),
                  ),
                ],
              ),
              color: Colors.white,
            ),
            flex: 6,
          )
        ],
      ),
    );
  }

  Column EXPANDED1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, top: 40),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios,size: 33,),
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 40),
              child: IconButton(
                icon: Icon(Icons.shopping_basket,size: 33,),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>BasketPage(elementos: forBasket,)
                  
                  ));
                },
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, top: 50),
          child: Text(
            "Hello ${widget.username}, What fruit salad ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "combo do you want today?",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.cyan,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.search),
                      Text("search for salad combos")
                    ],
                  ),
                ),
                Icon(Icons.menu_sharp)
              ],
            ),
          ),
        ),
        Text(
          "recomended for combo",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    );
  }
}
