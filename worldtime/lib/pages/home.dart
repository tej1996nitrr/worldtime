import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    String bgImage = data['isDayTime'] ? 'day3.jpeg' : 'night2.jpg';
    print(bgImage);
    Color bgColor = data['isDayTime'] ? Colors.lightBlue[900] : Colors.black;
    print(bgColor);
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/$bgImage'), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location, color: Colors.grey[300]),
                    label: Text(
                      "Edit location",
                      style: TextStyle(color: Colors.grey[400]),
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data['location'],
                        style: TextStyle(
                            fontSize: 28,
                            letterSpacing: 2,
                            color: Colors.white))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  data['time'],
                  style: TextStyle(fontSize: 60, color: Colors.white),
                )
              ],
            ),
          ),
        )));
  }
}
