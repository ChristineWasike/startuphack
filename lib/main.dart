import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
// ignore: library_prefixes
import 'package:latlong2/latlong.dart' as latLng;

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
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
                      attributionBuilder: (_) {
                        return const Text("© OpenStreetMap contributors");
                      },
                    ),
                    /*MarkerLayerOptions(
            markers: [
              Marker(
              width: 80.0,
              height: 80.0,
              point: latLng.LatLng(51.50, -0.09);
              builder: (ctx) => Container(
                child: FlutterLogo(),
              ),
              ),
            ],
          ),*/
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ]),
      ),
    );
  }
}
