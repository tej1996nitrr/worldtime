import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for ui
  String time; //time in location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoints
  bool isDayTime; //true or false for day or not
  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    //make request
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      //get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = DateFormat.jm().format(now);
      isDayTime = now.hour > 6 && now.hour < 18 ? true : false;
    } catch (e) {
      print(e);
      time = '3:05 PM';
      isDayTime = true;
    }
  }
}

WorldTime instance =
    WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
