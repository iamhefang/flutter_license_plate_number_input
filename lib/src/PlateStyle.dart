import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlateStyle {
  /// 按键上文字颜色
  final Color letterColor;

  /// 键盘背景颜色
  final Color backgroundColor;

  /// 按键背景颜色
  final Color keyBackgroundColor;

  /// 按键圆角
  final BorderRadius keyBorderRadius;

  const PlateStyle({
    this.letterColor = Colors.black,
    this.backgroundColor = Colors.grey,
    this.keyBackgroundColor = Colors.white,
    this.keyBorderRadius = const BorderRadius.all(Radius.circular(5)),
  });

  static const PlateStyle light = const PlateStyle();
  static const PlateStyle dark = const PlateStyle(
    letterColor: Colors.white,
    backgroundColor: Colors.black87,
    keyBackgroundColor: Colors.black54,
  );

  factory PlateStyle.copyWith({
    Color? letterColor,
  }) =>
      PlateStyle(
        letterColor: letterColor ?? Colors.black,
      );
}
