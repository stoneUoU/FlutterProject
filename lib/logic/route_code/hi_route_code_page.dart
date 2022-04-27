import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/base/config/hi_colors.dart';
import 'package:flutter_project/logic/health_code/widget/hi_health_code_navigation_widget.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_cell.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_info_cell.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_record_cell.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_header_widget.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class HiRouteCodePage extends StatefulWidget {
  const HiRouteCodePage({Key? key}) : super(key: key);
  @override
  _HiRouteCodePageState createState() => _HiRouteCodePageState();
}

class _HiRouteCodePageState extends State<HiRouteCodePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        HiHealthCodeNavigationWidget(
            titleString: "福建健康码",
            clickListener: (int index) {
              Navigator.pop(context);
            }),
        Expanded(
          child: Container(
              color: HiColorRouteCode,
              child: CustomScrollView(
                slivers: [
                  _HiRouteCodeListWidget(
                      index: 0, clickListener: (int clickNum) {}),
                  _HiRouteCodeListWidget(index: 1),
                  _HiRouteCodeListWidget(index: 2),
                  _HiRouteCodeListWidget(index: 3)
                ],
                reverse: false,
              )),
        )
      ],
    );
  }
}

typedef _HiRouteCodeListWidgetClickListener = void Function(int intString);

// ignore: must_be_immutable
class _HiRouteCodeListWidget extends StatelessWidget {
  GlobalKey<State>? stateKey = GlobalKey();
  _HiRouteCodeListWidgetClickListener? clickListener;
  _HiRouteCodeListWidget(
      {Key? key, this.index, this.stateKey, this.clickListener})
      : super(key: key);
  final int? index;
  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      sticky: false,
      header: funcHeaderContainer(this.index!),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) {
            if (index == 0) {
              return const HiRouteCodeCell();
            } else if (index == 1) {
              return const HiRouteCodeRecordCell();
            } else {
              return const HiRouteCodeInfoCell();
            }
          },
          childCount: 1,
        ),
      ),
    );
  }

  Widget funcHeaderContainer(int index) {
    if (index == 0) {
      return HiRouteCodeHeaderWidget();
    }
    return Container(color: HiColorRouteCode, height: 16);
  }
}
