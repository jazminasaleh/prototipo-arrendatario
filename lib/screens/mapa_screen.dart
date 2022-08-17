import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//Fue guiado por: https://pub.dev/packages/google_maps_flutter
class MapaScreen extends StatefulWidget {
  const MapaScreen({Key? key}) : super(key: key);

  @override
  State<MapaScreen> createState() => _MapaScreenState();
}

class _MapaScreenState extends State<MapaScreen> {
   Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
     final CameraPosition puntoInicial = CameraPosition(
    target: LatLng(5.704476, -72.941981),
    zoom: 17,
    tilt: 60,
  );
  //Marcadores
  Set<Marker> markers = new Set<Marker>();
  markers.add(new Marker(
    markerId: MarkerId('universidad'),
    position: LatLng(5.704476, -72.941981),
   ),
    );
  markers.add(new Marker(
    markerId: MarkerId('inmueble'),
    position: LatLng(5.703594, -72.943689)));
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa'),
        actions: [
          IconButton(
            onPressed: ()async{
               final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target:  LatLng(5.703594, -72.943689),
        zoom: 17.5,
        tilt: 60)
    )
  );
  }, 
             icon: Icon(Icons.location_on))
           
        ],
      ),
       body: GoogleMap(
        myLocationButtonEnabled: false,
        markers: markers,
        mapType: MapType.normal,
        initialCameraPosition: puntoInicial,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}