import 'package:delivery_address/controller/controller.dart';
import 'package:delivery_address/model/my_model.dart';
import 'package:delivery_address/screen/google_map.dart';
import 'package:delivery_address/widget/custom_label.dart';
import 'package:delivery_address/widget/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final controller = Get.put(Controller());
  final Completer<GoogleMapController> _controller = Completer();
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(11.587241511437389, 104.90041232259823),
    zoom: 14.4746,
  );

  // final CameraPosition _kLake = const CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery Address"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 150,
                width: double.infinity,
                // child: MapSample(isHide: true),
                child: GoogleMap(
                  myLocationButtonEnabled: false,
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
              SizedBox(
                height: 551,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 15, top: 5),
                      child: Text("Add a new address",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(left: 15, top: 15, right: 15),
                      decoration: const BoxDecoration(),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/images/location.svg"),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Obx(
                                  () => Text(
                                    controller.location.value,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // const Spacer(),
                          // SvgPicture.asset("assets/images/edit.svg"),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomTextField(
                              validator: (value) {
                                return null;
                              },
                              onSaved: (value) {
                                controller.newName.value = value!;
                              },
                              label: const Text('Contact Name'),
                              onChange: (e) {
                                
                                // debugPrint("${controller.contactController}");
                              },
                              controller: controller.contactController,
                              isFill: controller.contactController.text != "",
                            ),
                            CustomTextField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please input phone number';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                controller.newPhone.value = value!;
                              },
                              label: RichText(
                                text: TextSpan(
                                  text: 'Phone Number',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: ' *',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                              onChange: (e) {
                                debugPrint(e);
                              },
                              controller: controller.phoneController,
                              isFill: controller.phoneController.text != "",
                            ),
                            CustomTextField(
                              validator: (value) {
                                return null;
                              },
                              onSaved: (value) {
                                controller.newEmail.value = value!;
                              },
                              label: const Text("Email"),
                              onChange: (e) {},
                              controller: controller.emailController,
                              isFill: controller.emailController.text != "",
                            ),
                            CustomTextField(
                              validator: (value) {
                                return null;
                              },
                              onSaved: (value) {
                                controller.newDescription.value = value!;
                                debugPrint("Note value: $value");
                              },
                              label: const Text("Noted"),
                              onChange: (e) {
                                debugPrint(e);
                              },
                              controller: controller.noteController,
                              isFill: controller.noteController.text != "",
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Add a label",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Obx(
                            () => Row(
                              children:
                                  controller.listAddress.asMap().entries.map(
                                (e) {
                                  return GestureDetector(
                                    onTap: () {
                                      controller.addressIndex.value = e.key;
                                      controller.newPlace.value =
                                          e.value.title!;
                                      controller.update();
                                    },
                                    child: CustomLabel(
                                      addressModel: e.value,
                                      isClick: controller.newPlace.value ==
                                          e.value.title,
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 0.5)
          ],
        ),
        child: GestureDetector(
          onTap: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
            }
            // _formKey.currentState!.save();

            controller.isEdit.value == false
                ? controller.postAddress()
                : controller.updateAddress(controller.getKey.value);

            controller.listAPI.add(
              MyModel(
                name: controller.newPlace.value,
                address: controller.location.value,
                description: controller.newDescription.value,
              ),
            );
            _formKey.currentState!.reset();
            Navigator.pop(context);
          },
          child: Container(
            width: double.infinity,
            height: 40,
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
            decoration: BoxDecoration(
                color: Colors.indigo[900],
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                "Save",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 150, bottom: 550),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo[900],
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 10,
              bottom: 10,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MapSample(),
              ),
            );
          },
          child: const Text("Change"),
        ),
      ),
    );
  }
}
