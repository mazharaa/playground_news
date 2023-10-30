import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class UiSquareCard extends StatelessWidget {
  const UiSquareCard({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    double hCont = UiHelper.setHeight(100);
    double wCont = UiHelper.setWidth(100);
    return Container(
      width: wCont,
      height: hCont,
      margin: UiHelper.padding(right: 15),
      decoration: BoxDecoration(
        borderRadius: UiHelper.borderRadiusCircular(all: 15),
        border: Border.all(color: ColorConst.lightGrey),
      ),
      child: Padding(
        padding: UiHelper.padding(all: 12),
        child: Padding(
          padding: UiHelper.padding(horizontal: 5.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: UiHelper.borderRadiusCircular(all: 10),
                  child: Image.asset(
                    AssetsPath.flutterLogo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              UiHelper.verticalSpace(15.sp),
              Center(
                child: Text(
                  title,
                  style: context.textTheme.labelMedium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
