import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/base/config/hi_colors.dart';
import 'package:flutter_project/logic/health_code/widget/hi_health_code_navigation_widget.dart';
import 'package:flutter_project/logic/route_code/model/hi_function_model.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_cell.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_info_cell.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_loading_cell.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_record_cell.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_header_widget.dart';
import 'package:flutter_project/logic/route_code/widget/hi_route_code_source_cell.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class HiRouteCodePage extends StatefulWidget {
  const HiRouteCodePage({Key? key}) : super(key: key);
  @override
  _HiRouteCodePageState createState() => _HiRouteCodePageState();
}

class _HiRouteCodePageState extends State<HiRouteCodePage>
    with SingleTickerProviderStateMixin {
  List<List<HiFunctionModel>> dataArrays = [
    [],
    [],
    [
      HiFunctionModel(topFillet:true,bottomFillet:false,iconName:"assets/images/route_code/ylz_error_phone.png",functionName:"有异常要打电话"),
      HiFunctionModel(topFillet:false,bottomFillet:false,iconName:"assets/images/route_code/ylz_personal_info_setting.png",functionName:"个人信息设置"),
      HiFunctionModel(topFillet:false,bottomFillet:false,iconName:"assets/images/route_code/ylz_add_or_delete.png",functionName:"添加和删除亲友健康码"),
      HiFunctionModel(topFillet:false,bottomFillet:false,iconName:"assets/images/route_code/ylz_questions.png",functionName:"有疑问想得到解答"),
      HiFunctionModel(topFillet:false,bottomFillet:false,iconName:"assets/images/route_code/ylz_download_love_card.png",functionName:"下载福码爱心卡"),
      HiFunctionModel(topFillet:false,bottomFillet:false,iconName:"assets/images/route_code/ylz_manage_code.png",functionName:"管理张贴码"),
      HiFunctionModel(topFillet:false,bottomFillet:true,iconName:"assets/images/route_code/ylz_add_desktop.png",functionName:"添加健康码到桌面")
    ],
    [
      HiFunctionModel(topFillet:true,bottomFillet:false,iconName:"assets/images/route_code/ylz_detect_map.png",functionName:"核酸检测地图"),
      HiFunctionModel(topFillet:false,bottomFillet:false,iconName:"assets/images/route_code/ylz_yimiao_pre.png",functionName:"疫苗接种预约"),
      HiFunctionModel(topFillet:false,bottomFillet:false,iconName:"assets/images/route_code/ylz_yimiao_map.png",functionName:"疫苗接种地图"),
      HiFunctionModel(topFillet:false,bottomFillet:true,iconName:"assets/images/route_code/ylz_elec_code.png",functionName:"医保电子凭证")
    ],
    []
  ];

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
                slivers: _funcSlivers(),
                reverse: false,
              )),
        )
      ],
    );
  }

  List<Widget> _funcSlivers () {
    List <Widget> slivers= [];
    for (int i = 0; i<this.dataArrays.length; i++) {
      List <HiFunctionModel> funcModels = this.dataArrays[i];
      slivers.add(_HiRouteCodeListWidget(index: i,clickListener:(int clickNum) {},funcModels: funcModels));
    }
    return slivers;
  }
}

typedef _HiRouteCodeListWidgetClickListener = void Function(int intString);

// ignore: must_be_immutable
class _HiRouteCodeListWidget extends StatelessWidget {
  GlobalKey<State>? stateKey = GlobalKey();
  final int? index;
  _HiRouteCodeListWidgetClickListener? clickListener;
  List<HiFunctionModel>? funcModels;
  _HiRouteCodeListWidget(
      {Key? key, this.index, this.stateKey, this.clickListener,this.funcModels})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      sticky: false,
      header: funcHeaderContainer(index),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) {
            if (index == 0) {
              return const HiRouteCodeCell();
            } else if (index == 1) {
              return const HiRouteCodeRecordCell();
            } else if (index == 2 || index == 3) {
              HiFunctionModel funcModel =  this.funcModels![i];
              return HiRouteCodeInfoCell(funcModel: funcModel);
            } else {
              return const HiRouteCodeSourceCell();
            }
          },
          childCount: (index == 0 || index == 1 || index == 4) ? 1 : this.funcModels?.length,
        ),
      ),
    );
  }

  Widget funcHeaderContainer(int? index) {
    if (index == 0) {
      return HiRouteCodeHeaderWidget();
    }
    return Container(color: HiColorRouteCode, height: 16);
  }
}
