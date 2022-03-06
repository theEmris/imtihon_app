import 'package:flutter/material.dart';
import './home.dart';
class IsmSorash extends StatefulWidget {
  const IsmSorash({Key? key}) : super(key: key);

  @override
  _IsmSorashState createState() => _IsmSorashState();
}

class _IsmSorashState extends State<IsmSorash> {
  final nameController = TextEditingController();
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
                "https://i.pinimg.com/564x/ba/bc/6b/babc6b9fc8b8bdf173c45f8292a38be5.jpg"),
            fit: BoxFit.cover,
          ))
        ],
      )),
      Expanded(
          child: Container(
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Text(
                      "What is your first name?",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: Form(
                        child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          labelText: "name",
                          hintText: "Username"),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
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
                                  MaterialPageRoute(builder: (context)=> HomePage1( 
                                    username:(nameController.text.isEmpty ? nameController.text = "User":nameController.text)
                                    ),
                                  )
                                ).then((value) => nameController.clear());
                              },
                              child: Text(
                                "Start Ordering !",
                                style: TextStyle(fontSize: 20),
                              ))),
                    ),
                  )
                ],
              ),
            )),
      )),
    ]));
  }
}
