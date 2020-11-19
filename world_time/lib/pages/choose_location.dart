import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'sri-lanka-flag-icon-128.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'india-flag-icon-128.png'),
    WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'japan-flag-icon-128.png'),
    WorldTime(url: 'Australia/Adelaide', location: 'Adelaide', flag: 'australia-flag-icon-128.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'germany-flag-icon-128.png'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'thailand-flag-icon-128.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'united-kingdom-flag-icon-128.png'),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: 'russia-flag-icon-128.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'united-states-of-america-flag-icon-128.png'),
    WorldTime(url: 'America/Argentina/Buenos_Aires', location: 'Buenos Aires', flag: 'argentina-flag-icon-128.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0 ,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                onTap: () {},
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            );
          },
      ),
    );
  }
}
