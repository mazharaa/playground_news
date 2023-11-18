import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playground_news/core/commons/assets_path.dart';

@RoutePage()
class PixelNewsSplashPage extends StatelessWidget {
  const PixelNewsSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AssetsPath.pixelsNewsSplash),
      ),
    );
  }
}
