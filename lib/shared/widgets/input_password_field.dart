import 'package:online_groceries/shared/constants/colors.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries/shared/shared.dart';

class InputPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? labelText;
  final String placeholder;
  final TextStyle? placeholderStyle;
  final Color color;
  final Color? labelColor;
  final double fontSize;
  final FontWeight? labelFontWeight;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChangedText;
  final String errorMessage;

  InputPasswordField({
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText = 'Password',
    this.placeholder = '',
    this.color = Colors.black,
    this.labelColor,
    this.errorMessage: '',
    this.fontSize = 15.0,
    this.labelFontWeight,
    this.placeholderStyle,
    this.validator,
    this.onChangedText,
  });

  @override
  _InputPasswordFieldState createState() => new _InputPasswordFieldState();
}

class _InputPasswordFieldState extends State<InputPasswordField> {
  var _obscureText = true.obs;

  @override
  void didUpdateWidget(covariant InputPasswordField oldWidget) {
    if (oldWidget.errorMessage != widget.errorMessage) {
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: widget.controller,
        obscureText: _obscureText.value,
        onChanged: widget.onChangedText,
        decoration: InputDecoration(
          hintText: widget.placeholder,
          hintStyle: widget.placeholderStyle,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            fontSize: CommonConstants.text16,
            color: widget.labelColor,
            fontWeight: widget.labelFontWeight,
          ),
          suffixIcon: IconButton(
              onPressed: () {
                _obscureText.value = !_obscureText.value;
              },
              icon: Icon(
                _obscureText.value ? Icons.visibility : Icons.visibility_off,
                size: 20.w,
              )),
        ),
      ),
    );
  }
}
