import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class UiCard extends StatelessWidget {
  const UiCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double hCont = UiHelper.setHeight(100);
    return Container(
      decoration: BoxDecoration(
        borderRadius: UiHelper.borderRadiusCircular(all: 15),
        border: Border.all(color: ColorConst.lightGrey),
      ),
      width: UiHelper.setWidth(double.infinity),
      height: hCont,
      margin: UiHelper.padding(right: 15),
      child: Padding(
        padding: UiHelper.padding(all: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: UiHelper.borderRadiusCircular(all: 7),
                child: Image.asset(
                  AssetsPath.flutterLogo,
                ),
              ),
            ),
            UiHelper.horizontalSpace(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: UiHelper.setWidth(200),
                    child: Text(
                      'How can I be Flutter Developer Expert',
                      style: context.textTheme.displaySmall,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jill Lepore 23 May 23',
                        style: context.textTheme.labelMedium,
                      ),
                      const Icon(
                        Icons.star,
                        color: ColorConst.primary,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
