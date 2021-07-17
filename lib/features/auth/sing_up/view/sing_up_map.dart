import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:marzy/features/auth/sing_up/contoller/sing_up_contoller.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';

class SingUpMap extends GetView<SingUpController> {
  static const route = '/sing_up_map';
  final Completer<GoogleMapController> _controller = Completer();
  SingUpMap({Key? key}) : super(key: key);
  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        onTap: (value) async {
          // if (markers.length > 0) {
          //   markers.clear();
          // }
          // setState(() {
          //   markers.add(
          //     Marker(
          //       position: value,
          //       infoWindow: InfoWindow(
          //         title: 'Go to There',
          //         //  snippet: '5 Star Rating',
          //       ),
          //       icon: BitmapDescriptor.defaultMarker,
          //       markerId: MarkerId('dsa'),
          //     ),
          //   );
          // });
        },
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
