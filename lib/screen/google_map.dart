import 'dart:async';

import 'package:delivery_address/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  final bool? isHide;
  const MapSample({Key? key, this.isHide = false}) : super(key: key);
  @override
  State<MapSample> createState() => MapSampleState();
}

final controller = Get.put(Controller());

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();

  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(11.587241511437389, 104.90041232259823),
    zoom: 14.4746,
  );
  Marker? origin;
  // final CameraPosition _kLake = const CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          if (origin != null) origin!,
        },
        onTap: addMarker,
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 75),
        child: widget.isHide == false
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo[900],
                  padding: const EdgeInsets.only(
                    left: 70,
                    right: 70,
                    top: 15,
                    bottom: 15,
                  ),
                ),
                onPressed: () {
                  Future.delayed(const Duration(milliseconds: 500), () {
                    controller.getNamebyPlaceMark();
                  });
                  controller.update();
                  // debugPrint("${controller.getNamebyPlaceMark()}");
                  Navigator.pop(context);
                },
                child: const Text("Update Location"),
              )
            : Container(),
      ),

      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
      // ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }

  void addMarker(LatLng pos) {
    if (origin == null || origin != null) {
      setState(
        () {
          origin = Marker(
            markerId: const MarkerId("origin"),
            infoWindow: const InfoWindow(title: "Origin"),
            icon:
                BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            position: pos,
          );
          controller.latLng.value =
              LatLng(origin!.position.latitude, origin!.position.longitude);

          // Future.delayed(const Duration(milliseconds: 500), () {
          //   controller.getNamebyPlaceMark();
          // });
        },
      );
    }
  }
}
