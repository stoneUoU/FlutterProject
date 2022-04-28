import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_colors.dart';
import 'package:flutter_project/base/config/hi_const.dart';
import 'package:flutter_project/logic/route_code/model/hi_function_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menghabit/tool/base/extensions/screen_extension.dart';

// ignore: must_be_immutable
class HiRouteCodeRecordCell extends StatelessWidget {
  const HiRouteCodeRecordCell({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          Container(
            margin: EdgeInsets.fromLTRB(24.px, 0, 0, 0),
            height: 96.px,
            width: (ScreenW(context) - 48.px - 16.px) / 2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.px))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16.px),
                  alignment: Alignment.centerLeft,
                  child: Text("无14天内记录",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.bold,
                        color: color_FF303133,
                      )),
                  height: 48.px,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.px),
                  height: 0.5,
                  width: 48.px,
                  color: color_FFCECECE,
                ),
                Container(
                    margin: EdgeInsets.only(left: 16.px),
                    height: 47.5.px,
                    alignment: Alignment.centerLeft,
                    child: Text("无14天内记录",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16.px,
                          color: color_FF606266,
                        )))
              ],
            ),
          ),
          const Positioned(
              child: Image(image: AssetImage("assets/images/route_code/ylz_record_fresh.png"), fit: BoxFit.cover),
              right: 0,
              bottom: 0)
        ]),
        Stack(children: [
          Container(
            margin: EdgeInsets.fromLTRB(16.px, 0, 0, 0),
            height: 96.px,
            width: (ScreenW(context) - 48.px - 16.px) / 2,
            decoration: BoxDecoration(
                color: HiColorAllInsertCode,
                borderRadius: BorderRadius.all(Radius.circular(12.0.px))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16.px),
                  alignment: Alignment.centerLeft,
                  child: Text("已全程接种",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.bold,
                        color: color_FF303133,
                      )),
                  height: 48.px,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.px),
                  height: 0.5,
                  width: 48.px,
                  color: color_FFCECECE,
                ),
                Container(
                    margin: EdgeInsets.only(left: 16.px),
                    height: 47.5.px,
                    alignment: Alignment.centerLeft,
                    child: Text("疫苗接种",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16.px,
                          color: color_FF606266,
                        )))
              ],
            ),
          ),
          const Positioned(
              child: Image(image: AssetImage("assets/images/route_code/ylz_jiezhong_all.png"), fit: BoxFit.cover),
              right: 0,
              bottom: 0)
        ])
      ],
    );
  }
}
