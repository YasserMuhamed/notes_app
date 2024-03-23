import 'package:flutter/material.dart';
// import 'package:validators/validators.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      this.preicon,
      this.txtlabel,
      this.onChange,
      this.suficon,
      this.obscure,
      this.validate,
      this.key_type,
      this.fillColor,
      this.maxLines = 1,
      this.textPadding});
  bool? obscure;
  Icon? preicon;
  IconButton? suficon;
  String? txtlabel;
  Function(String)? onChange;
  FormFieldValidator? validate;
  TextInputType? key_type;
  final int maxLines;
  Color? fillColor;
  EdgeInsetsGeometry? textPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: textPadding ?? const EdgeInsets.all(0),
      child: TextFormField(
        cursorColor: Colors.white,
        maxLines: maxLines,
        keyboardType: key_type ?? TextInputType.name,
        validator: validate,
        obscureText: obscure ?? false,
        onChanged: onChange,
        decoration: InputDecoration(
          fillColor: fillColor ?? Colors.transparent,
          filled: true,
          suffixIcon: suficon,
          prefixIcon: preicon,
          hintText: txtlabel,
          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.white)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey.shade200),
          ),
          // ignore: prefer_const_constructors
          errorBorder: OutlineInputBorder(
            borderSide: (const BorderSide(
                width: 2, color: Color.fromRGBO(183, 28, 28, 0.6))),
          ),

          // ignore: prefer_const_constructors
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 2, color: Color.fromRGBO(183, 28, 28, .6))),
        ),
      ),
    );
  }
}
