import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  void getDate() async{
    await Future.delayed(Duration(seconds: 3), () {
      print("Hmmmmm delayed.");
    });
    Future.delayed(Duration(seconds: 2), () {
      print("booooo delayed.");
    });
    print("statement")
  }

  @override
  void initState() {
    super.initState();
    getDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Choose a Location."),
          centerTitle: true,
        ),
        body: RaisedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
        ));
  }
}
