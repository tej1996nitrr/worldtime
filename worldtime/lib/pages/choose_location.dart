import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  void getDate() async {
    String str1 = await Future.delayed(Duration(seconds: 3), () {
      return "Hmmmmm delayed.";
    });
    String str2 = await Future.delayed(Duration(seconds: 2), () {
      return "booooo delayed.";
    });
    print("statement : $str1-$str2");
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
