import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: UiHelper.setHeight(25)),
        Padding(
          padding: UiHelper.padding(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Explore', style: context.textTheme.displayMedium),
              Text(
                'Reset',
                style: context.textTheme.headlineMedium?.copyWith(
                  color: ColorConst.primary,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: UiHelper.setHeight(20)),
        TextField(
          style: context.textTheme.titleMedium,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: ColorConst.primary),
            hintText: 'Search articles...',
            hintStyle: context.textTheme.bodySmall?.copyWith(
              color: ColorConst.darkGrey,
            ),
            isDense: true,
            contentPadding: UiHelper.padding(vertical: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.blueAccent,
                width: 5,
              ),
            ),
          ),
        ),
        SizedBox(height: UiHelper.setHeight(15)),
        Padding(
          padding: UiHelper.padding(horizontal: 7),
          child: Row(
            children: [
              GestureDetector(
                child: Text(
                  'NEWEST',
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: ColorConst.grey,
                  ),
                ),
              ),
              SizedBox(width: UiHelper.setWidth(10)),
              GestureDetector(
                child: Text(
                  'OLDEST',
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: ColorConst.grey,
                  ),
                ),
              ),
              SizedBox(width: UiHelper.setWidth(10)),
              GestureDetector(
                child: Text(
                  'RELEVANCE',
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: ColorConst.grey,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
