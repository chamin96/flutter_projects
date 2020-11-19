import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; // location name for the ui
  String time; // time in the location
  String flag; // url to an asset flag
  String url; // location url

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      String offsetHours = data['utc_offset'].substring(1, 3);
      String offsetMinutes = data['utc_offset'].substring(4, 6);

      //create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(
          hours: int.parse(offsetHours), minutes: int.parse(offsetMinutes)));

      // set the time property
      time = now.toString();
    } catch (e) {
      print('ERR: $e');
      time = '$e';
    }
  }
}


