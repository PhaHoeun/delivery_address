import 'package:delivery_address/controller/controller.dart';
import 'package:delivery_address/controller/model.dart';
import 'package:delivery_address/widget/custom_button_number.dart';
import 'package:delivery_address/widget/custom_fillbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  final cont = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Text(
              "Input Passcode",
              style: GoogleFonts.getFont("Philosopher",
                  fontSize: 40, color: Colors.white),
            ),
            const SizedBox(height: 50),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomFillBox(isFill: cont.listController.isNotEmpty),
                  CustomFillBox(isFill: cont.listController.length >= 2),
                  CustomFillBox(isFill: cont.listController.length >= 3),
                  CustomFillBox(isFill: cont.listController.length == 4),
                  // CustomFillBox(),
                  // CustomFillBox(),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsetsDirectional.only(
                    start: 20, end: 20, top: 50),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 100,
                    crossAxisCount: 3,
                    mainAxisSpacing: 10),
                children: list.asMap().entries.map((e) {
                  return CustomButtonNumber(
                    models: e.value,
                    onTapButton: () {
                      cont.onTapKey(e.value.numbers!);
                      // debugPrint("Click on Number ${e.value.numbers}");
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
