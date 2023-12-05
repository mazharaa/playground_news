import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class ActionText extends StatelessWidget {
  const ActionText({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
    this.needDivider = true,
  });

  final String title;
  final String subTitle;
  final VoidCallback onTap;
  final bool needDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: UiHelper.setWidth(270),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.textTheme.displaySmall?.copyWith(
                        color: ColorConst.primary,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: ColorConst.darkGrey,
                      ),
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                    )
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        if (needDivider) UiHelper.divider()
      ],
    );
  }
}
