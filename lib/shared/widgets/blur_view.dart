import 'dart:ui';

import 'package:flutter/material.dart';

class BlurView extends StatelessWidget {
  const BlurView({Key? key, this.child, this.blurColor})
      : super(key: key);

  final Widget? child;

  final Color? blurColor;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: new BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: new Container(
          decoration: new BoxDecoration(
            color: blurColor ?? Colors.grey.shade200.withOpacity(0.5),
          ),
          child: child,
        ),
      ),
    );
  }
}
