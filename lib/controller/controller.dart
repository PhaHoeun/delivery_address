import 'package:delivery_address/configuration/helper/api_base_helper.dart';
import 'package:delivery_address/controller/model.dart';
import 'package:delivery_address/model/my_model.dart';
import 'package:delivery_address/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Controller extends GetxController {
  var onTapIndex = 0.obs;

  var listController = [].obs;
  var listPassword = <int>[5, 5, 5, 5].obs;
  onTapKey(int number) {
    if (listController.length < 4) {
      listController.add(number);
    }
    if (listController.length == 4 &&
        listController.toString() == listPassword.toString()) {
      Future.delayed(
        const Duration(milliseconds: 1000),
        () {
          Get.to(
            const SplashScreen(),
          );
        },
      );
    }
    if (listController.length == 4 &&
        listController.toString() != listPassword.toString()) {
      Future.delayed(
        const Duration(milliseconds: 400),
        () {
          listController.clear();
        },
      );
    }
  }

  var currentIndex = 11.obs;
  var addressIndex = 11.obs;
  var fillIndex = 115.obs;
  var id115 = 0.obs;

  var contactController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var noteController = TextEditingController();

  var newEmail = ''.obs;
  var newName = ''.obs;
  var newPhone = ''.obs;
  var newPlace = "".obs;
  var newAddress = "".obs;
  var newDescription = "".obs;
  var lat = 0.0.obs;
  var lng = 0.0.obs;

  var latLng = const LatLng(0, 0).obs;

  var isEdit = true.obs;

  var modelEdit = Model().obs;

  final isLoading = true.obs;
  addOrUpdate() {
    if (isEdit.value) {
      postAddress();
      Get.back();
    } else {
      updateAddress(id115.value);
      Get.back();
    }
  }
  //Static function
  // addValue() {
  //   isEdit.value = false;
  //   listAPI.add(
  //     MyModel(
  //         name: newPlace.value,
  //         address: newAddress.value,
  //         description: newDescription.value),
  //   );
  // }

  // editValue() {
  //   isEdit.value = true;
  //   modelEdit.value.place = newPlace.value;
  //   modelEdit.value.address = newAddress.value;
  //   modelEdit.value.description = newDescription.value;
  // newPlace.value = list[getKey.value].place!;
  // newAddress.value = list[getKey.value].address!;
  // newDescription.value = list[getKey.value].description!;
  // }

  var list = <Model>[
    Model(
        place: "Home",
        address: "#23, Street 351, Phnom Penh",
        description: "Note to rider: deliver on my break!"),
    Model(
        place: "Work",
        address: "#23, Street 351, Phnom Penh",
        description: "Note to rider: deliver on my break!"),
    Model(
        place: "Other",
        address: "#23, Street 351, Phnom Penh",
        description: "Note to rider: deliver on my break!"),
  ].obs;

  var listAddress = <AddressModel>[
    AddressModel(title: "Home", image: "assets/images/home.svg"),
    AddressModel(title: "Work", image: "assets/images/work.svg"),
    AddressModel(title: "Favourite", image: "assets/images/favourite.svg"),
    AddressModel(title: "Other", image: "assets/images/add.svg"),
  ].obs;

  var listAPI = <MyModel>[].obs;
  var location = "".obs;
  getNamebyPlaceMark() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          latLng.value.latitude, latLng.value.longitude);

      Placemark place = placemarks[0];
      location.value =
          "${place.name}${place.street != "" ? ", " : ""}${place.street}${place.subAdministrativeArea != "" ? ", " : ""}${place.subAdministrativeArea}${place.administrativeArea != "" ? ", " : ""}${place.administrativeArea}${place.country != "" ? ", " : ""}${place.country}";
      debugPrint("Location: $location");
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  final apiBaseHelper = ApiBaseHelper();
  var getKey = 0.obs;

  ///
  getAddress() {
    isLoading.value = true;
    apiBaseHelper
        .onNetworkRequesting(
            url: "/api/v1/customer-address/get/",
            methode: METHODE.get,
            isAuthorize: true)
        .then((response) {
      debugPrint("$response");
      listAPI.clear();
      response.map((e) {
        listAPI.add(MyModel.fromJson(e));
      }).toList();
      isLoading.value = false;
    }).onError((ErrorModel error, stackTrace) {
      isLoading.value = false;
      debugPrint("${error.statusCode}");
      Get.snackbar("Get", "@Kea Kea Unsuccess");
    });
    return listAPI;
  }

  postAddress() {
    apiBaseHelper.onNetworkRequesting(
        url: "/api/v1/customer-address/get/",
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          "name": newPlace.value,
          "description": newDescription.value,
          "address": location.value,
          "contact_name": newName.value,
          "contact_number": newPhone.value,
          "contact_email": newEmail.value,
          "latitude": "12.587857416653483",
          "longitude": "124.89715081605088",
          "is_default": "false"
        }).then(
      (response) {
        debugPrint("$response");
        Future.delayed(const Duration(milliseconds: 500), () {
          getAddress();
        });
      },
    ).onError((ErrorModel error, stackTrace) {
      debugPrint("${error.statusCode}");
      Get.snackbar("Post", "@Kea Kea Error");
    });
  }

  updateAddress(int id) {
    apiBaseHelper.onNetworkRequesting(
        url: "/api/v1/customer-address/update/$id/",
        methode: METHODE.update,
        isAuthorize: true,
        body: {
          "name": newPlace.value,
          "description": newDescription.value,
          "address": location.value,
          "contact_name": newName.value,
          "contact_number": newPhone.value,
          "contact_email": newEmail.value,
          "latitude": lat.value,
          "longitude": lng.value,
          "is_default": false
        }).then(
      (response) {
        debugPrint("$response");
        Future.delayed(const Duration(milliseconds: 500), () {
          getAddress();
        });
      },
    ).onError((ErrorModel error, stackTrace) {
      debugPrint("${error.statusCode}");
      Get.snackbar("UpDate", " pha pha Error");
    });
  }

  deleteAddress(int id) {
    apiBaseHelper
        .onNetworkRequesting(
      url: "/api/v1/customer-address/delete/$id/",
      methode: METHODE.delete,
      isAuthorize: true,
    )
        .then(
      (response) {
        debugPrint("$response");
        Future.delayed(const Duration(milliseconds: 500), () {
          getAddress();
        });
      },
    ).onError((ErrorModel error, stackTrace) {
      debugPrint("${error.statusCode}");
      Get.snackbar("Delete", "Successfully deleted card!");
    });
  }

  // @override
  // void onInit() {
  //   getAddress();
  //   super.onInit();
  // }
}
