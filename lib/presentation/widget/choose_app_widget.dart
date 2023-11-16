import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/main_app_cubit/main_app_cubit.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class ChooseAppWidget extends StatelessWidget {
  const ChooseAppWidget({
    super.key,
    this.showresetButton = false,
  });

  final bool showresetButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Choose your app', style: context.textTheme.displaySmall),
        UiHelper.verticalSpace(25),
        InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: () {
            context
                .read<MainAppCubit>()
                .changeApp(const MainAppType.pixelNews());
          },
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
          onTap: () {
            context
                .read<MainAppCubit>()
                .changeApp(const MainAppType.playGround());
          },
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
        ),
        UiHelper.verticalSpace(20.sp),
        if (showresetButton)
          InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: () {
              context.read<MainAppCubit>().changeApp(const MainAppType.none());
            },
            child: Container(
              padding: UiHelper.padding(all: 18),
              decoration: BoxDecoration(
                borderRadius: UiHelper.borderRadiusCircular(all: 15),
                border: Border.all(color: ColorConst.lightGrey),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SvgPicture.asset(AssetsPath.restartIcon),
                    UiHelper.horizontalSpace(10),
                    Text(
                      'Reset App',
                      style: context.textTheme.titleMedium,
                    )
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
