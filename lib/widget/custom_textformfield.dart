import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  FormFieldSetter<String>? onSaved;
  CustomTextField({
    Key? key,
    this.onSaved,
    this.label,
    this.onChange,
    this.controller,
    this.validator,
    this.isFill = false,
    this.inputType,
    this.validation,
    this.hintText,
  }) : super(key: key);

  final Widget? label;
  final String? hintText;
  // FormFieldSetter<String>? onSave;
  final ValueChanged<String>? onChange;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final bool isFill;
  final bool? validation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        onSaved: (value) {
          onSaved!(value);
        },
        validator: validator,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintText: hintText,
          label: label,
          labelStyle: TextStyle(color: Colors.grey.shade700),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
                color: isFill ? Colors.grey.shade800 : Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey.shade700),
          ),
          filled: true,
          fillColor: isFill ? Colors.white : Colors.grey[200],
        ),
        onChanged: onChange,
        controller: controller,
      ),
    );
  }
}
