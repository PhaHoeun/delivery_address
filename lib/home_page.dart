import 'package:delivery_address/controller/controller.dart';
import 'package:delivery_address/screen/address.dart';
import 'package:delivery_address/widget/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Home Page"),
          backgroundColor: Colors.indigo[900],
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.indigo[900],
            ),
            child: const Text('Add Delivery Address'),
            onPressed: () {
              controller.getAddress();
              showModalBottomSheet<void>(
                backgroundColor: Colors.grey[600],
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.only(top: 30),
                    height: 700,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 30),
                          child: Text(
                            "Delivery Address",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Obx(
                                  () => controller.isLoading.value
                                      ? const CircularProgressIndicator()
                                      : Column(
                                          children: controller.listAPI
                                              .asMap()
                                              .entries
                                              .map(
                                            (e) {
                                              return GestureDetector(
                                                onTap: () {
                                                  controller.currentIndex
                                                      .value = e.key;
                                                  controller.update();
                                                  // debugPrint("========== ${controller.currentIndex.value}");
                                                },
                                                child: Dismissible(
                                                  // background: Container(
                                                  //   color: Colors.red,
                                                  //   child: const Center(
                                                  //       child: Text(
                                                  //     "Delete",
                                                  //     style: TextStyle(
                                                  //         fontSize: 20,
                                                  //         color: Colors.white),
                                                  //   )),
                                                  // ),
                                                  background: Container(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                      width: 100,
                                                      height: double.infinity,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 15),
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              top: 50),
                                                      decoration: const BoxDecoration(
                                                          color: Colors.red,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          15))),
                                                      child: Column(
                                                        children: const [
                                                          Icon(
                                                            Icons.delete,
                                                            color: Colors.white,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  key: ValueKey(controller
                                                      .listAPI[e.key]),
                                                  onDismissed: (a) {
                                                    controller.listAPI
                                                        .removeAt(e.key);
                                                    controller.deleteAddress(
                                                        e.value.id!);
                                                  },
                                                  child: CustomCard(
                                                    onTapEdit: () {
                                                      controller.isEdit.value =
                                                          true;
                                                      debugPrint("Edit card");

                                                      controller
                                                              .newPlace.value =
                                                          e.value.name!;
                                                      controller.newAddress
                                                              .value =
                                                          e.value.address!;
                                                      controller
                                                              .contactController
                                                              .text =
                                                          e.value.contactName!;
                                                      controller.phoneController
                                                              .text =
                                                          e.value
                                                              .contactNumber!;
                                                      controller.emailController
                                                              .text =
                                                          e.value.contactEmail!;
                                                      controller.noteController
                                                              .text =
                                                          e.value.description!;

                                                      controller.getKey.value =
                                                          e.value.id!;
                                                      debugPrint(
                                                          "===========Key${controller.getKey.value}");

                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Address(),
                                                        ),
                                                      );
                                                    },
                                                    myModel: e.value,
                                                    isSelect: controller
                                                            .currentIndex
                                                            .value ==
                                                        e.key,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 20),
                                  child: TextButton(
                                    onPressed: () {
                                      controller.isEdit.value = false;
                                      controller.update();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            controller.contactController.text =
                                                "";
                                            controller.phoneController.text =
                                                "";
                                            controller.emailController.text =
                                                "";
                                            controller.noteController.text = "";
                                            controller.location.value = "";

                                            return const Address();
                                          },
                                          // =>
                                          // const Address(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.add,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          "Add a new delivery address",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    width: 1, color: Colors.indigo.shade900),
                                primary: Colors.white,
                                padding: const EdgeInsets.only(
                                  left: 70,
                                  right: 70,
                                  top: 15,
                                  bottom: 15,
                                ),
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => ()),
                                // );
                                // Navigator.pop(context);
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(color: Colors.indigo[900]),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.indigo[900],
                                padding: const EdgeInsets.only(
                                  left: 70,
                                  right: 70,
                                  top: 15,
                                  bottom: 15,
                                ),
                              ),
                              onPressed: () {},
                              child: const Text("Apply"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
