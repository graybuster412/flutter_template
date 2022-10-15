import 'package:flutter/material.dart';

import '../shared.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.buttonText,
      this.onPressed,
      this.isDisabled: false,
      this.indicatorColor: Colors.grey,
      this.radius: 19,
      this.textColor: AppColors.white,
      this.buttonHeight: 67,
      this.buttonColor,
      this.prefixIcon,
      this.textFontWeight,
      this.isLoading: false})
      : super(key: key);

  final String buttonText;

  final Color textColor;

  final Color? buttonColor;

  final VoidCallback? onPressed;

  final bool isLoading;

  final double radius;

  final double buttonHeight;

  final bool isDisabled;

  final Color? indicatorColor;

  final Widget? prefixIcon;

  final FontWeight? textFontWeight;

  _buildContent() {
    if (isLoading) {
      return Container(
          width: 17,
          height: 17,
          child: CircularProgressIndicator(backgroundColor: indicatorColor));
    } else
      return Row(
        mainAxisAlignment: prefixIcon != null
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.center,
        children: [
          prefixIcon ?? Container(),
          StyleText(
            text: buttonText,
            textColor: textColor,
            fontSize: 18,
            fontWeight: textFontWeight ?? FontWeight.normal,
          ),
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isDisabled ? 0.5 : 1,
      child: ElevatedButton(
        onPressed: onPressed,
        child: _buildContent(),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius))),
        ),
      ),
    );
  }
}
