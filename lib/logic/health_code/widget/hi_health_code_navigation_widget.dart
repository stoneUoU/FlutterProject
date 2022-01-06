import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_colors.dart';
import 'package:flutter_project/base/config/hi_const.dart';
import 'package:menghabit/tool/base/extensions/screen_extension.dart';

typedef void HiHealthCodeNavigationWidgetClickListener(int index);

class HiHealthCodeNavigationWidget extends StatelessWidget {
  final HiHealthCodeNavigationWidgetClickListener clickListener;
  const HiHealthCodeNavigationWidget({Key? key, required this.clickListener})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenW(context),
      height: kBottomNavigationBarHeight + StatusH(context),
      child: Column(
        children: [
          Container(
              width: ScreenW(context),
              height: StatusH(context),
              color: Colors.white),
          Stack(children: [
            Container(
              width: ScreenW(context),
              height: kBottomNavigationBarHeight,
              color: Colors.white,
              child: Center(
                  child: Text(
                "福建八闽健康码",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18.px,
                  color: color_FF303133,
                ),
              )),
            ),
            Positioned(
                child: Container(
                  width: 64.px,
                  height: 24.px,
                  decoration: new BoxDecoration(
                    border: new Border.all(
                      color: color_FFCECECE,
                      width: 1.0.px,
                    ),
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(12.0.px)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/common/hi_mirco_more.png',
                        ),
                      ),
                      Container(
                        width: 1.0.px,
                        height: 16.px,
                        color: color_FFCECECE,
                      ),
                      InkWell(
                        child: Container(
                          child: Image.asset(
                            'assets/images/common/hi_mirco_shut.png',
                          ),
                        ),
                        onTap: () {
                          if (this.clickListener != null) {
                            this.clickListener(0);
                          }
                        },
                      )
                    ],
                  ),
                ),
                right: 16.px,
                top: (kBottomNavigationBarHeight - 24.px) / 2)
          ])
        ],
      ),
    );
  }
}