import 'package:delivery_address/controller/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CustomLabel extends StatelessWidget {
  AddressModel? addressModel = AddressModel();
  bool? isClick;
  CustomLabel({Key? key, this.addressModel, this.isClick = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: isClick! ? Colors.indigo : Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 1,
                  color: Colors.grey.shade300,
                )
              ],
            ),
            child: Center(
              child: SvgPicture.asset(
                "${addressModel!.image}",
                color: isClick! ? Colors.white : Colors.indigo[900],
              ),
            ),
          ),
        ),
        Text(
          "${addressModel!.title}",
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        ),
      ],
    );
  }
}
