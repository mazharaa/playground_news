import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/pixel_news/application/nav_bar/nav_bar_cubit.dart';
import 'package:playground_news/pixel_news/presentation/screen/favorite_screen.dart';
import 'package:playground_news/pixel_news/presentation/screen/home_screen.dart';
import 'package:playground_news/pixel_news/presentation/screen/search_screen.dart';
import 'package:playground_news/pixel_news/presentation/screen/setting_screen.dart';

@RoutePage()
class PixelNewsMainPage extends StatelessWidget {
  const PixelNewsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (int index) {
              context.read<NavBarCubit>().changeScreen(index);
              currentIndex = state.selectedScreen(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsPath.homeIcon),
                label: 'home',
                activeIcon: SvgPicture.asset(
                  AssetsPath.homeIcon,
                  colorFilter: const ColorFilter.mode(
                    ColorConst.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsPath.searchIcon),
                label: 'search',
                activeIcon: SvgPicture.asset(
                  AssetsPath.searchIcon,
                  colorFilter: const ColorFilter.mode(
                    ColorConst.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsPath.favoriteIcon),
                label: 'favorite',
                activeIcon: SvgPicture.asset(
                  AssetsPath.favoriteIcon,
                  colorFilter: const ColorFilter.mode(
                    ColorConst.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsPath.settingIcon),
                label: 'setting',
                activeIcon: SvgPicture.asset(
                  AssetsPath.settingIcon,
                  colorFilter: const ColorFilter.mode(
                    ColorConst.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: UiHelper.padding(horizontal: 15),
              child: IndexedStack(
                index: currentIndex,
                children: const [
                  HomeScreen(),
                  SearchScreen(),
                  FavoriteScreen(),
                  SettingScreen(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
