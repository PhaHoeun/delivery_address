import 'package:flutter/material.dart';

class CustomFillBox extends StatelessWidget {
  const CustomFillBox({Key? key, this.isFill}) : super(key: key);
  final bool? isFill;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(left: 10),
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        color: isFill! ? Colors.white : Colors.transparent,
        shape: BoxShape.circle,
      ),
    );
  }
}
