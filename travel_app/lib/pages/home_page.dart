import 'package:flutter/material.dart';

import '../model/place.dart';
import '../model/places_data.dart';
import '../responsive_util.dart';
import '../widgets/place_details.dart';
import '../widgets/places_gallery.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Place selectedPlace = Places().getPlaces()[0];
  void handlePlaceChanged(Place newPlace) {
    setState(() {
      selectedPlace = newPlace;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget widget;
    switch (getScreenSize(MediaQuery.of(context).size.width)) {
      case ScreenSize.small:
        widget = homePageSmall();
        break;
      case ScreenSize.medium:
        widget = homePageMedium();
        break;
      case ScreenSize.large:
        widget = homePageLarge();
        break;
    }
    return widget;
  }

  Widget homePageSmall() {
    return Scaffold(
      appBar: appBar(),
      drawer: Drawer(
        child: drawerBody(),
      ),
      body: PlacesGallery(handlePlaceChanged: handlePlaceChanged),
    );
  }

  Widget homePageMedium() {
    return Scaffold(
      appBar: appBar(),
      body: Row(
        children: [
          Expanded(flex: 2, child: drawerBody()),
          Expanded(
              flex: 5,
              child: PlacesGallery(handlePlaceChanged: handlePlaceChanged)),
        ],
      ),
    );
  }

  Widget homePageLarge() {
    return Scaffold(
      appBar: appBar(),
      body: Row(
        children: [
          Expanded(flex: 1, child: drawerBody()),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: PlacesGallery(
                            handlePlaceChanged: handlePlaceChanged,
                            showHorizontalGridView: true)),
                    Expanded(flex: 2, child: PlaceDetails(place: selectedPlace))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget appBar() {
    return AppBar(
      title: Text('Places App - Responsive'),
    );
  }

  Widget drawerBody() {
    final menuItems = Places().getStatesOfSouthIndia();
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: menuItems.length + 1, // +1 for header
        itemBuilder: (context, index) {
          if (index == 0) {
            return DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage(
                        'assets/images/india_chettinad_silk_maker.png')),
              ),
              child: Container(
                alignment: AlignmentDirectional.bottomStart,
                child: Text(
                  'South India',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            );
          } else {
            return ListTile(
                leading: Icon(Icons.location_city),
                title: Text(menuItems[index - 1]),
                selected: index == 4 ? true : false);
          }
        });
  }
}
