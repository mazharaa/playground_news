import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: UiHelper.padding(top: 35, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Choose your app', style: context.textTheme.displaySmall),
              UiHelper.verticalSpace(25),
              InkWell(
                borderRadius: BorderRadius.circular(18),
                onTap: () {},
                child: Container(
                  padding: UiHelper.padding(all: 18),
                  decoration: BoxDecoration(
                    borderRadius: UiHelper.borderRadiusCircular(all: 15),
                    border: Border.all(color: ColorConst.lightGrey),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset(AssetsPath.pixelNewsLogo),
                  ),
                ),
              ),
              UiHelper.verticalSpace(20.sp),
              InkWell(
                borderRadius: BorderRadius.circular(18),
                onTap: () => context.router.push(const ChooseSectionRoute()),
                child: Container(
                  padding: UiHelper.padding(all: 18),
                  decoration: BoxDecoration(
                    borderRadius: UiHelper.borderRadiusCircular(all: 15),
                    border: Border.all(color: ColorConst.lightGrey),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(AssetsPath.playgroundLogo),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
