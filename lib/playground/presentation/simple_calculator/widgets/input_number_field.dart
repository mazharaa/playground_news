import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class InputNumberField extends StatelessWidget {
  const InputNumberField({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: UiHelper.padding(horizontal: 5),
      height: UiHelper.setHeight(60),
      width: UiHelper.setWidth(70),
      decoration: BoxDecoration(
        borderRadius: UiHelper.borderRadiusCircular(all: 10),
        border: Border.all(
          color: ColorConst.grey,
          width: 1.5,
        ),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: UiHelper.setFont(25),
          height: UiHelper.setHeight(1.15),
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: UiHelper.padding(top: 13),
        ),
      ),
    );
  }
}
