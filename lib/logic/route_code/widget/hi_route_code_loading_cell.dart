import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_const.dart';
import 'code_view/hi_route_code_cell_bottom_widget.dart';
import 'code_view/hi_route_code_cell_info_widget.dart';
import 'code_view/hi_route_code_cell_loading_widget.dart';

class HiRouteCodeLoadingCell extends StatelessWidget {
  const HiRouteCodeLoadingCell({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
      decoration: const BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      child: Column(
        children: [
          HiRouteCodeCellInfoWidget(),
          HiRouteCodeCellLoadingWidget(),
          HiRouteCodeCellBottomWidget()
        ],
      ),
    );
  }
}