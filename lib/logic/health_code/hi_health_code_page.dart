import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/base/config/hi_colors.dart';
import 'package:flutter_project/base/config/hi_const.dart';
import 'package:flutter_project/logic/health_code/widget/hi_health_code_check_widget.dart';
import 'package:flutter_project/logic/health_code/widget/hi_health_code_info_widget.dart';
import 'package:flutter_project/logic/health_code/widget/hi_health_code_navigation_widget.dart';
import 'package:flutter_project/logic/health_code/widget/hi_health_code_provider_widget.dart';
import 'package:flutter_project/logic/health_code/widget/hi_health_code_service_widget.dart';
import 'package:flutter_project/logic/health_code/widget/hi_health_code_source_widget.dart';
import 'package:flutter_project/logic/health_code/widget/hi_health_code_widget.dart';
import 'package:flutter_project/provider/hi_health_code_provider.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:provider/provider.dart';

class HiHealthCodePage extends StatefulWidget {
  const HiHealthCodePage({Key? key}) : super(key: key);
  @override
  _HiHealthCodePageState createState() => _HiHealthCodePageState();
}

class _HiHealthCodePageState extends State<HiHealthCodePage> {
  GlobalKey<HiHealthCodeWidgetState> healthCodeWidgetStateKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return new Container(
      child: Column(
        children: [
          HiHealthCodeNavigationWidget(clickListener: (int index) {
            print("关闭闽政通展码页");
            Navigator.pop(context);
          }),
          new Container(
              width: ScreenW(context),
              height: ScreenH(context) -
                  (kBottomNavigationBarHeight + StatusH(context)),
              color: HiColorMZTBlueView,
              child: CustomScrollView(
                slivers: [
                  _StickyHeaderList(
                      index: 0,
                      clickListener: (int clickNum) {
                        this.generateClickNum(clickNum);
                      }),
                  _StickyHeaderList(
                    index: 1,
                    stateKey: this.healthCodeWidgetStateKey,
                  ),
                  _StickyHeaderList(index: 2),
                  _StickyHeaderList(index: 3),
                  _StickyHeaderList(index: 4)
                ],
                reverse: false,
              ))
        ],
      ),
    );
  }

  void generateClickNum(int intString) {
    this.healthCodeWidgetStateKey.currentState?.generateClickNum(intString);
  }
}

typedef void _StickyHeaderListClickListener(int intString);

class _StickyHeaderList extends StatelessWidget {
  GlobalKey<State>? stateKey = GlobalKey();
  _StickyHeaderListClickListener? clickListener;
  _StickyHeaderList({Key? key, this.index, this.stateKey, this.clickListener})
      : super(key: key);
  final int? index;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      sticky: false,
      header: Container(
        color: HiColorMZTBlueView,
        width: ScreenW(context),
        height: index == 0 || index == 1 ? 0 : 12,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) {
            if (index == 0) {
              return HiHealthCodeInfoWidget(
                  healthCodeInfoWidgetClickListener: (int intString) {
                // if (this.clickListener != null) {
                //   this.clickListener!(intString);
                // }
                context.read<HiHealthCodeProvider>().setClickNum(intString);
              });
            } else if (index == 1) {
              // return HiHealthCodeWidget(stateKey!);
              return HiHealthCodeProviderWidget();
            } else if (index == 2) {
              return HiHealthCodeCheckWidget();
            } else if (index == 3) {
              return HiHealthCodeServiceWidget();
            } else {
              return HiHealthCodeSourceWidget();
            }
          },
          childCount: 1,
        ),
      ),
    );
  }
}
