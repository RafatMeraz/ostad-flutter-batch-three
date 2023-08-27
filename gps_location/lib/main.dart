import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart';

void main() {
  runApp(const GPSLocationApp());
}

class GPSLocationApp extends StatelessWidget {
  const GPSLocationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LocationData? myCurrentLocation;
  StreamSubscription? _locationSubscription;

  @override
  void initState() {
    initialize();
    super.initState();
  }

  void initialize() {
    Location.instance.changeSettings(
      distanceFilter: 10,
      accuracy: LocationAccuracy.high,
      interval: 10000
    );
  }

  void getMyLocation() async {
    await Location.instance.requestPermission().then((requestedPermission) {
      print(requestedPermission);
    });
    await Location.instance.hasPermission().then((permissionStatus)  {
      print(permissionStatus);
    });
    myCurrentLocation = await Location.instance.getLocation();
    print(myCurrentLocation);
    if (mounted) {
      setState(() {});
    }
  }

  void listenToMyLocation() {
    _locationSubscription =
        Location.instance.onLocationChanged.listen((location) {
      if (location != myCurrentLocation) {
        myCurrentLocation = location;
        print('listening to location $location');
        if (mounted) {
          setState(() {});
        }
      }
    });
  }

  void stopToListenLocation() {
    _locationSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('my location'),
            Text('${myCurrentLocation?.latitude ?? ''} '
                '${myCurrentLocation?.longitude ?? ''} '),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              listenToMyLocation();
            },
            child: const Icon(Icons.location_on),
          ),
          const SizedBox(width: 16,),
          FloatingActionButton(
            onPressed: () {
              stopToListenLocation();
            },
            child: const Icon(Icons.stop_circle_outlined),
          ),
          const SizedBox(width: 16,),
          FloatingActionButton(
            onPressed: () {
              getMyLocation();
            },
            child: const Icon(Icons.my_location),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _locationSubscription?.cancel();
    super.dispose();
  }
}
