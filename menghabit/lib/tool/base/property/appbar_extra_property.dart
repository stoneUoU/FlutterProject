import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menghabit/menghabit.dart';

/// appBar相关配置信息
abstract class AppBarExtraProperty {
  /// 是否展示appBar
  bool _appBarIsShow = true;

  /// 设置appBar背景颜色
  ValueNotifier<Color> _appBarBgColor = ValueNotifier(Colors.white);

  ///设置appBar模式->黑暗模式和白天模式
  ValueNotifier<SystemUiOverlayStyle> _appBarBrightness =
      ValueNotifier(SystemUiOverlayStyle.dark);

  /// 是否展示appBar返回按钮
  ValueNotifier<bool> _appBarShowBackIcon = ValueNotifier(true);

  /// 设置返回按钮是否是关闭
  ValueNotifier<bool> _appBarIsCloseIcon = ValueNotifier(false);

  /// 是否appBar返回按钮颜色
  ValueNotifier<Color> _appBarShowBackIconColor = ValueNotifier(Colors.white);

  /// 设置中间标题栏颜色
  ValueNotifier<Color> _appBarTitleColor = ValueNotifier(Colors.white);

  /// 设置标题字体大小
  ValueNotifier<double> _appBarTitleSize = ValueNotifier(16.px);

  /// 设置标题字体粗细
  ValueNotifier<FontWeight> _appBarTitleWeight = ValueNotifier(FontWeight.bold);

  /// 标题栏
  ValueNotifier<String> _appBarTitle = ValueNotifier("");

  /// 左边按钮回调
  WillPopCallback? _appBarLeadingCallBack;

  /// 设置AppBar背景颜色
  AppBarExtraProperty setAppBarBgColor(Color appBarBgColor) {
    _appBarBgColor.value = appBarBgColor;
    return this;
  }

  /// 设置AppBar的模式
  AppBarExtraProperty setAppBarBrightness(
      SystemUiOverlayStyle brightnessModel) {
    _appBarBrightness.value = brightnessModel;
    return this;
  }

  /// 设置标题
  AppBarExtraProperty setAppBarShow(bool isShowAppbar) {
    _appBarIsShow = isShowAppbar;
    return this;
  }

  ///设置左边按钮回调
  AppBarExtraProperty setAppBarLeadingCallBack(WillPopCallback callback) {
    this._appBarLeadingCallBack = callback;
    return this;
  }

  ///设置标题栏是否含有返回按钮
  AppBarExtraProperty setShowAppBarBackIcon(bool isShowAppbarIcon) {
    _appBarShowBackIcon.value = isShowAppbarIcon;
    return this;
  }

  /// 设置返回按钮是否是关闭
  AppBarExtraProperty setAppIsCloseIcon(bool isCloseIcon) {
    _appBarIsCloseIcon.value = isCloseIcon;
    return this;
  }

  /// 设置返回按钮颜色
  AppBarExtraProperty setAppBarBackIconColor(Color appBarBackIconColor) {
    _appBarShowBackIconColor.value = appBarBackIconColor;
    return this;
  }

  ///设置标题栏内容
  AppBarExtraProperty setAppBarTitle(String title) {
    _appBarTitle.value = title;
    return this;
  }

  ///设置标题栏内容
  AppBarExtraProperty setAppbarTitleSize(double titleSize) {
    _appBarTitleSize.value = titleSize;
    return this;
  }

  /// 设置标题栏颜色
  AppBarExtraProperty setAppBarTitleColor(Color titleColor) {
    _appBarTitleColor.value = titleColor;
    return this;
  }

  /// 设置标题栏字体粗细
  AppBarExtraProperty setAppBarTitleWeight(FontWeight fontWeight) {
    _appBarTitleWeight.value = fontWeight;
    return this;
  }

  bool get appBarIsShow => _appBarIsShow;

  ValueNotifier<bool> get appBarShowBackIcon => _appBarShowBackIcon;

  ValueNotifier<bool> get appBarIsCloseIcon => _appBarIsCloseIcon;

  WillPopCallback? get appBarLeadingCallBack => _appBarLeadingCallBack;

  ValueNotifier<String> get appBarTitle => _appBarTitle;

  ValueNotifier<Color> get appBarTitleColor => _appBarTitleColor;

  ValueNotifier<Color> get appBarBackIconColor => _appBarShowBackIconColor;

  ValueNotifier<Color> get appBarBgColor => _appBarBgColor;

  ValueNotifier<double> get appBarTitleSize => _appBarTitleSize;

  ValueNotifier<FontWeight> get appBarTitleWeight => _appBarTitleWeight;

  ValueNotifier<SystemUiOverlayStyle> get appBarBrightness => _appBarBrightness;
}
