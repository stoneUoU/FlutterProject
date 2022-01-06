import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_colors.dart';
import 'package:menghabit/tool/base/extensions/screen_extension.dart';

class HiMinePage extends StatefulWidget {
  const HiMinePage({Key? key}) : super(key: key);

  @override
  _HiMinePageState createState() => _HiMinePageState();
}

class _HiMinePageState extends State<HiMinePage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        " 我的 ",
        style: TextStyle(color: color_FF303133, fontSize: 24.px),
      ),
    );
  }
}
