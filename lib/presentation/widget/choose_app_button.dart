import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class ChooseAppButton extends StatelessWidget {
  const ChooseAppButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  final GestureTapCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        padding: UiHelper.padding(all: 18),
        decoration: BoxDecoration(
          borderRadius: UiHelper.borderRadiusCircular(all: 15),
          border: Border.all(color: ColorConst.lightGrey),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: child,
        ),
      ),
    );
  }
}
