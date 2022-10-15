import 'package:flutter/material.dart';

import '../shared.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen(
      {Key? key,
      this.isLoading: false,
      required this.child,
      this.useSafeArea: true,
      this.backgroundColor: AppColors.deep_orange})
      : super(key: key);

  final bool isLoading;

  final bool useSafeArea;

  final Widget child;

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
        absorbing: isLoading,
        child: Scaffold(
            backgroundColor: backgroundColor,
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
                child: useSafeArea
                    ? SafeArea(child: child)
                    : Container(child: child))));
  }
}
