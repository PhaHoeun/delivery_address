import 'package:delivery_address/controller/controller.dart';
import 'package:delivery_address/model/my_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  final MyModel? myModel;
  final bool isSelect;
  final GestureTapCallback? onTapEdit;
  CustomCard({
    Key? key,
    this.isSelect = false,
    this.myModel,
    this.onTapEdit,
  }) : super(key: key);
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: isSelect ? Colors.grey[100] : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                    radius: 8,
                    backgroundColor: isSelect ? Colors.blue : Colors.white)),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  myModel!.name ?? "",
                  style: const TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 20),
                ),
                Text(
                  myModel!.address ?? "",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Text(
                  myModel!.description ?? "",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                ),
              ],
            ),
          ),
          // const Spacer(),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: onTapEdit,
              child: const Icon(Icons.edit_outlined,
                  color: Color.fromARGB(255, 11, 113, 197)),
            ),
          ),
        ],
      ),
    );
  }
}
