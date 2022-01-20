import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_const.dart';

class HiMineMemberCellImageWidget extends StatelessWidget {
  bool isPlace = true;

  HiMineMemberCellImageWidget({Key? key, required this.isPlace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 88,
      width: (ScreenW(context) - 32) / 5,
      child: Image.asset(
        this.isPlace
            ? 'assets/images/mine/ylz_mine_circle_add_place.png'
            : 'assets/images/mine/ylz_mine_circle_add.png',
      ),
    );
  }
}
