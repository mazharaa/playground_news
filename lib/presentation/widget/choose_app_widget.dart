import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playground_news/application/main_app_cubit/main_app_cubit.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/presentation/widget/choose_app_button.dart';

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
        UiHelper.verticalSpace(15),
        ChooseAppButton(
          onTap: () {
            context
                .read<MainAppCubit>()
                .changeApp(const MainAppType.pixelNews());
          },
          child: SvgPicture.asset(AssetsPath.pixelNewsLogo),
        ),
        UiHelper.verticalSpace(10.sp),
        ChooseAppButton(
          onTap: () {
            context
                .read<MainAppCubit>()
                .changeApp(const MainAppType.playGround());
          },
          child: Image.asset(AssetsPath.playgroundLogo),
        ),
        UiHelper.verticalSpace(10.sp),
        ChooseAppButton(
          onTap: () {
            context
                .read<MainAppCubit>()
                .changeApp(const MainAppType.helloWorld());
          },
          child: Text(
            'Hello World',
            style: context.textTheme.displayLarge,
          ),
        ),
        UiHelper.verticalSpace(10.sp),
        if (showresetButton)
          ChooseAppButton(
            onTap: () {
              context.read<MainAppCubit>().changeApp(const MainAppType.none());
            },
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
      ],
    );
  }
}
