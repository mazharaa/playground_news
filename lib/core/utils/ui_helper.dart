import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';

class UiHelper {
  UiHelper._();

  static BorderRadiusGeometry borderRadiusCircular({
    double? all,
    double? top,
    double? bottom,
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) {
    topLeft = setSp(topLeft ?? top ?? all ?? 0);
    topRight = setSp(topRight ?? top ?? all ?? 0);
    bottomLeft = setSp(bottomLeft ?? bottom ?? all ?? 0);
    bottomRight = setSp(bottomRight ?? bottom ?? all ?? 0);
    return BorderRadius.only(
      topLeft: Radius.circular(topLeft),
      topRight: Radius.circular(topRight),
      bottomLeft: Radius.circular(bottomLeft),
      bottomRight: Radius.circular(bottomRight),
    );
  }

  static EdgeInsets padding({
    double? all,
    double? vertical,
    double? horizontal,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    left = setWidth(left ?? horizontal ?? all ?? 0);
    top = setHeight(top ?? vertical ?? all ?? 0);
    right = setWidth(right ?? horizontal ?? all ?? 0);
    bottom = setHeight(bottom ?? vertical ?? all ?? 0);
    return EdgeInsets.fromLTRB(left, top, right, bottom);
  }

  static double setHeight(double height) {
    return ScreenUtil().setHeight(height);
  }

  static double setSp(double size) {
    return size.sp;
  }

  static double setWidth(double width) {
    return ScreenUtil().setWidth(width);
  }

  static Widget loading(
      {Color? color, double? width, double? height, double? value}) {
    return SizedBox(
      width: width ?? UiHelper.setSp(20),
      height: height ?? UiHelper.setSp(20),
      child: Center(
        child: CircularProgressIndicator(
          value: value,
          strokeWidth: 2.0,
          valueColor:
              AlwaysStoppedAnimation<Color>(color ?? ColorConst.primary),
        ),
      ),
    );
  }

  static Widget loadingWidget(
      {double? height, Color? color, Color? loadingColor}) {
    return Container(
      height: height ?? UiHelper.setHeight(800),
      color: color ?? ColorConst.whiteColor,
      child: Center(child: UiHelper.loading(color: loadingColor)),
    );
  }

  static Widget emptyCaseWidget(
    BuildContext context, {
    required String emptyText,
    double? height,
  }) {
    return Container(
      padding: UiHelper.padding(vertical: 50, horizontal: 30),
      height: height,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              emptyText,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium,
            ),
            UiHelper.verticalSpace(40),
          ],
        ),
      ),
    );
  }

  static double setFont(double font) {
    return ScreenUtil().setSp(font);
  }

  static double mediaHeight(BuildContext context, double scale) {
    return MediaQuery.of(context).size.height * scale;
  }

  static double mediaWidth(BuildContext context, double scale) {
    return MediaQuery.of(context).size.width * scale;
  }

  static Widget verticalSpace(double height) {
    return SizedBox(height: setHeight(height));
  }

  static Widget horizontalSpace(double width) {
    return SizedBox(width: setWidth(width));
  }

  static List<BoxShadow> defaultBoxShadow = [
    const BoxShadow(
      color: Color(0xffE3E3E3),
      spreadRadius: 2,
      blurRadius: 10,
      offset: Offset(0, 2), // changes position of shadow
    )
  ];

  static List<BoxShadow> thinnerBoxShadow = [
    BoxShadow(
      color: ColorConst.grey.withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 8,
      offset: const Offset(2, 2), // changes position of shadow
    )
  ];

  static Widget divider({Color? color, double? thickness, double? height}) {
    return Divider(
      color: color,
      thickness: thickness,
      height: height ?? UiHelper.setSp(30),
    );
  }

  static double defaultPadding = 28.0;

//   static void showToast(String message, {bool isSuccess = false}) {
//     Fluttertoast.showToast(
//         msg: message,
//         toastLength: isSuccess ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: isSuccess ? Colors.green : Colors.red,
//         textColor: Colors.white,
//         fontSize: UiHelper.setFont(14));
//   }
// }

// class EmptyTemplate extends StatelessWidget {
//   final bool isInitialState;
//   final String emptyText;
//   const EmptyTemplate({
//     Key? key,
//     this.isInitialState = false,
//     required this.emptyText,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return isInitialState
//         ? Align(
//             alignment: Alignment.center,
//             child: Container(
//               padding: UiHelper.padding(vertical: 500, horizontal: 200),
//               child: Column(
//                 children: [
//                   Icon(
//                     Icons.screen_search_desktop_outlined,
//                     color: ColorConst.primary,
//                     size: UiHelper.setFont(200),
//                   ),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Text(
//                           emptyText,
//                           textAlign: TextAlign.center,
//                           style: context.textTheme.bodyMedium!.copyWith(),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )
//         : Align(
//             alignment: Alignment.center,
//             child: Container(
//               padding: UiHelper.padding(vertical: 40),
//               child: Text(
//                 emptyText,
//                 textAlign: TextAlign.center,
//                 style: context.textTheme.bodySmall!.copyWith(),
//               ),
//             ),
//           );
//   }
}
