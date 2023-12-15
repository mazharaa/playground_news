import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String imgSrc;
  final String desc;
  final bool isFavorite;
  final GestureTapCallback? starOnTap;
  const NewsCard({
    super.key,
    required this.title,
    required this.desc,
    required this.imgSrc,
    this.isFavorite = false,
    this.starOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: UiHelper.borderRadiusCircular(all: 15),
        border: Border.all(
          color: ColorConst.lightGrey,
        ),
      ),
      width: UiHelper.setWidth(double.infinity),
      height: UiHelper.setHeight(100),
      child: Padding(
        padding: UiHelper.padding(all: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: UiHelper.borderRadiusCircular(all: 7),
                child: SizedBox(
                    width: UiHelper.setWidth(90), // Set your desired width
                    height: UiHelper.setHeight(76), // Set your desired height
                    child: Image.network(
                      imgSrc,
                      fit: BoxFit.cover,
                    )),
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
                      title,
                      style: context.textTheme.headlineMedium,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          desc,
                          style: context.textTheme.labelMedium,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          maxLines: 2,
                        ),
                      ),
                      GestureDetector(
                        onTap: starOnTap,
                        child: Icon(
                          isFavorite ? Icons.star : Icons.star_border,
                          color: ColorConst.primary,
                          size: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
