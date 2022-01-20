import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_colors.dart';
import 'package:flutter_project/base/config/hi_const.dart';

class HiMineMemberCellLabelWidget extends StatelessWidget {
  const HiMineMemberCellLabelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: (ScreenW(context) - 32) / 5,
      child: Column(
        children: [
          Image.asset(
            'assets/images/mine/ylz_mine_baby_avater.png',
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'iOS工程师',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: color_FF606266, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
