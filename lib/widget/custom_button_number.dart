// ignore_for_file: must_be_immutable

import 'package:delivery_address/controller/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonNumber extends StatelessWidget {
  CustomButtonNumber({Key? key, this.models, this.onTapButton})
      : super(key: key);

  Models? models = Models();
  GestureTapCallback? onTapButton;

  @override
  Widget build(BuildContext context) {
    return models!.numbers != null
        ? GestureDetector(
            onTap: onTapButton,
            child: Container(
              padding: const EdgeInsets.all(15),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  color: Colors.transparent,
                  // color: Colors.transparent,
                  shape: BoxShape.circle),
              child: FittedBox(
                child: Text(
                  "${models!.numbers}",
                  style: GoogleFonts.getFont("Chivo",
                      color: const Color.fromARGB(255, 230, 221, 221)),
                ),
              ),
            ),
          )
        : Container();
  }
}
