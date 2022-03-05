// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
// ignore: library_prefixes
import 'package:latlong2/latlong.dart' as latLng;
import 'package:startuphack/screens/hangouts/add_hangout.dart';
import 'package:startuphack/screens/authentication/authenticate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fit-in',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Authenticate(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showSettingsPanel() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            height: 800,
            padding:
                const EdgeInsets.symmetric(vertical: 00.0, horizontal: 0.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("assets/bike.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  const Image(image: AssetImage('assets/Group3.png')),
                  const SizedBox(height: 5.0),
                  TextButton.icon(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.black87,
                      ),
                      label: const Text(
                        "logout",
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                      onPressed: () async {}),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 0.0,
          top: 30.0,
          right: 0.0,
          bottom: 0.0,
        ),
        child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 10.0,
              right: 20.0,
              bottom: 0.0,
            ),
            children: <Widget>[
              const Image(
                image: AssetImage('assets/logo.png'),
                width: 30,
                height: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 600,
                alignment: Alignment.centerLeft,
                child: FlutterMap(
                  options: MapOptions(
                    center: latLng.LatLng(-1.930, 30.127),
                    zoom: 13.0,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate:
                          "https://api.mapbox.com/styles/v1/christine-wasike/cl0d0tu8r000o14mql064uv9b/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiY2hyaXN0aW5lLXdhc2lrZSIsImEiOiJjbDBkMHBwNWowNDg3M2NwZmw4N3JjNTYyIn0.PS0SBk6BRgVAVT2MZxy-Zw",
                      additionalOptions: {
                        'accessToken':
                            'pk.eyJ1IjoiY2hyaXN0aW5lLXdhc2lrZSIsImEiOiJjbDBkMHBwNWowNDg3M2NwZmw4N3JjNTYyIn0.PS0SBk6BRgVAVT2MZxy-Zw',
                        'id':
                            'christine-wasike.cl0d220co04cg27pfz30sz43l-9q6k0',
                      },
                    ),
                    MarkerLayerOptions(
                      markers: [
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: latLng.LatLng(-1.930, 30.127),
                          builder: (ctx) => Container(
                            child: GestureDetector(
                              onTap: () {
                                _showSettingsPanel();
                              },
                              child: const Image(
                                  image: AssetImage('assets/Group3.png')),
                            ),
                          ),
                        ),
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: latLng.LatLng(-1.942617, 30.138201),
                          builder: (ctx) => Container(
                            child: const Image(
                                image: AssetImage('assets/Group4.png')),
                          ),
                        ),
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: latLng.LatLng(-1.936860, 30.078765),
                          builder: (ctx) => Container(
                            child: const Image(
                                image: AssetImage('assets/Group5.png')),
                          ),
                        ),
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: latLng.LatLng(-1.951515, 30.157585),
                          builder: (ctx) => Container(
                            child: const Image(
                                image: AssetImage('assets/Group6.png')),
                          ),
                        ),
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: latLng.LatLng(-1.935501, 30.094790),
                          builder: (ctx) => Container(
                            child: const Image(
                                image: AssetImage('assets/Group7.png')),
                          ),
                        ),
                        Marker(
                          width: 80.0,
                          height: 80.0,
                          point: latLng.LatLng(-1.942617, 30.138201),
                          builder: (ctx) => Container(
                            child: const Image(
                                image: AssetImage('assets/Group8.png')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 150,
                height: 40,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey[600],
                  padding: const EdgeInsets.all(0.0),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Add Hangout',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddHangout()));
                    });
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
