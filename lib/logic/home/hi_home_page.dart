import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_colors.dart';

class HiHomePage extends StatefulWidget {
  const HiHomePage({Key? key}) : super(key: key);

  @override
  _HiHomePageState createState() => _HiHomePageState();
}

class _HiHomePageState extends State<HiHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        " 首页 ",
        style: TextStyle(color: color_FF303133, fontSize: 16),
      ),
    );
  }
}
