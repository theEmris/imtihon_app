import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import './location.dart';


class BasketPage extends StatefulWidget {
  List? elementos;

  BasketPage({Key? key, this.elementos}) : super(key: key);

  @override
  _BasketPageState createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    String son = func(widget.elementos!);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 33,
          ),
          onPressed: () {
            Navigator.of(context).pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "My Basket",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            widget.elementos![index]['rasmi'].toString()),
                      ),
                      trailing: Text(
                          "${widget.elementos![index]['narxi'].toString()}\$"),
                      title: Text(
                          "${widget.elementos![index]['desk'].toString()}"),
                    ),
                  );
                },
                itemCount: widget.elementos!.length,
              ),
            ),
            flex: 8,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text(
                          "Total summ:",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text("\$ ${son}", style: TextStyle(fontSize: 33)),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        child: TextButton(
                            onPressed: () {
                              myDialog(son);
                            },
                            child: Text(
                              "Check out",
                              style: TextStyle(fontSize: 25),
                            )),
                        height: 65,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ))
                ],
              ),
            ),
            flex: 2,
          )
        ],
      ),
    );
  }

  myDialog(String son) {
    return AwesomeDialog(
        context: context,
        dialogType: DialogType.QUESTION,
        title: "Do you wanna finish the shopping?",
        desc: "if you click button OK, you wanna exit from shopping screens",
        btnOk: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
          onPressed: () {
            
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>Location(sonni:son))
            );
          },
          child: Text("OK"),
        ),
        btnCancel: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.redAccent),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancel"),
        ))
      ..show();
  }

  String func(List lst1) {
    num summa = 0;
    for (var i = 0; i < lst1.length; i++) {
      summa += lst1[i]["narxi"];
    }
    return summa.toString();
  }
}
