import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HiRouteCodeHeaderWidget extends StatelessWidget {
  const HiRouteCodeHeaderWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage('assets/images/route_code/ylz_top_pic.png'),
        fit:BoxFit.cover
      ),
      width: ScreenW(context),
      height: 72
    );
  }
}