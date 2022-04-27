import 'package:flutter/material.dart';

class HiRouteCodeHeaderWidget extends StatelessWidget {
  const HiRouteCodeHeaderWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
      'assets/images/route_code/ylz_mine_avater.png',
    ),
      height: 72,
      color: Colors.red
    );
  }
}