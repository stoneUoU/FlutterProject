import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_colors.dart';
import 'package:flutter_project/logic/route_code/model/hi_function_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HiRouteCodeInfoCell extends StatelessWidget {
  HiFunctionModel? funcModel;
  HiRouteCodeInfoCell({Key? key, this.funcModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (funcModel!.topFillet ?? false) {
      return funcTopFilletContanier();
    } else if (funcModel?.bottomFillet ?? false) {
      return funcBottomFilletContanier();
    } else {
      return funcCommonContanier();
    }
  }

  Widget funcTopFilletContanier() {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
      height: 64,
      decoration: BoxDecoration(
          color:Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 63.5,child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                height: 32,
                width: 32,
                child: Image(
                    image: AssetImage(funcModel?.iconName ?? ""),
                    fit: BoxFit.cover)),
            Text("${funcModel?.functionName ?? ""}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: color_FF303133,
                ))
          ])),
          Container(color: color_FFCECECE,height: 0.5)
        ],
      ),
    );
  }

  Widget funcCommonContanier() {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
      height: 64,
      color:Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 63.5,child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                height: 32,
                width: 32,
                child: Image(
                    image: AssetImage(funcModel?.iconName ?? ""),
                    fit: BoxFit.cover)),
            Text("${funcModel?.functionName ?? ""}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: color_FF303133,
                ))
          ])),
          Container(color: color_FFCECECE,height: 0.5)
        ],
      ),
    );
  }

  Widget funcBottomFilletContanier() {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
      height: 64,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
            margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
            height: 32,
            width: 32,
            child: Image(
                image: AssetImage(funcModel?.iconName ?? ""),
                fit: BoxFit.cover)),
        Text("${funcModel?.functionName ?? ""}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: color_FF303133,
            ))
      ]),
    );
  }
}
