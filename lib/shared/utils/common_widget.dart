import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CommonWidget {
  static AppBar appBar(
      BuildContext context, String title, IconData? backIcon, Color color,
      {void Function()? callback,
      Color? backgroundColor,
      double? titleSize,
      List<Widget>? rightActionItems}) {
    return AppBar(
      leading: backIcon == null
          ? null
          : IconButton(
              icon: Icon(backIcon, color: color),
              onPressed: () {
                if (callback != null) {
                  callback();
                } else {
                  Navigator.pop(context);
                }
              },
            ),
      actions: rightActionItems,
      title: Text(
        title,
        style:
            TextStyle(color: color, fontFamily: 'Rubik', fontSize: titleSize),
      ),
      backgroundColor: backgroundColor,
      elevation: 0.0,
    );
  }

  static SizedBox rowHeight({double height = 16}) {
    return SizedBox(height: height);
  }

  static SizedBox rowWidth({double width = 16}) {
    return SizedBox(width: width);
  }

  static SizedBox smallRowHeight() {
    return SizedBox(height: 8);
  }

  static SizedBox smallRowWidth() {
    return SizedBox(width: 8);
  }

  static void toast(String error) async {
    await Fluttertoast.showToast(
        msg: error,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  static void showDialog(
      {customWidget: Widget,
      Curve? transition,
      bool useSafeArea: true,
      bool barrierDismissible: true}) async {
    await Get.dialog(
      customWidget,
      transitionCurve: transition ?? Curves.bounceInOut,
      barrierDismissible: barrierDismissible,
      useSafeArea: useSafeArea,
    );
  }

  static void showSnackbar(
      {required String title, required String message, int duration = 3000}) {
    if (Get.isSnackbarOpen == false) {
      Get.snackbar(title, message, duration: Duration(milliseconds: duration));
    }
  }

  static SvgPicture svgImage(String svg, {Color? color, Size? size}) {
    return SvgPicture.asset('assets/svgs/$svg.svg',
        color: color, height: size?.height, width: size?.width);
  }

  static Image pngImage(String path, {Size? size}) {
    return Image.asset('assets/images/$path.png',
        height: size?.height, width: size?.width);
  }
}
