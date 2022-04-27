// hi_route_code_record_cell
import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_const.dart';
import 'package:menghabit/tool/base/extensions/screen_extension.dart';
import 'code_view/hi_route_code_cell_bottom_widget.dart';
import 'code_view/hi_route_code_cell_info_widget.dart';
import 'code_view/hi_route_code_cell_widget.dart';

class HiRouteCodeCell extends StatelessWidget {
  const HiRouteCodeCell({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 556.px,
      margin: EdgeInsets.fromLTRB(24.px, 0, 24.px, 0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          HiRouteCodeCellInfoWidget(),
          HiRouteCodeCellWidget(),
          HiRouteCodeCellBottomWidget()
        ],
      ),
    );
  }
}
