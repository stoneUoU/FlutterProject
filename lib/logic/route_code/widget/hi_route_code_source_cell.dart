import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_colors.dart';

class HiRouteCodeSourceCell extends StatelessWidget {
  const HiRouteCodeSourceCell({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text("信息说明",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: color_FF303133,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:const EdgeInsets.fromLTRB(24, 16, 0, 0),
               child: const Text("数据来源：",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: color_FF606266,
                  )),
            ), Container(
                margin:const EdgeInsets.fromLTRB(8, 16, 24, 0),
                child: const Text("国家政务服务平台和福建省相关部门",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: color_FF606266,
                    )),
              )],
          ),Container(
            margin:const EdgeInsets.fromLTRB(0, 8, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:const EdgeInsets.fromLTRB(24, 0, 8, 0),
                  child: const Text("注意事项：",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                ), const Expanded(
                  child: Text("使用健康码时不要离开本页面且需本人操作确认",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                )],
            ),
          ),Container(
            margin:const EdgeInsets.fromLTRB(0,8, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:const EdgeInsets.fromLTRB(24, 0, 8, 0),
                  child: const Text("使用范围：",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                ), const Expanded(
                  child: Text("依托国家政务服务平台，实现跨省（区、市）数据共享和互通互认",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                )],
            ),
          ),Container(
            margin:const EdgeInsets.fromLTRB(0, 8, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:const EdgeInsets.fromLTRB(24, 0, 8, 0),
                  child: const Text("客服电话：",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                ), const Expanded(
                  child: Text("400-666-1331 （7*24小时）",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                )],
            ),
          ),Container(
            margin:const EdgeInsets.fromLTRB(0, 8, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:const EdgeInsets.fromLTRB(24, 0, 8, 0),
                  child: const Text("主办机构：",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                ), const Expanded(
                  child: Text("福建省数字办 卫健委 医保局",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                )],
            ),
          ),Container(
            margin:const EdgeInsets.fromLTRB(0, 8, 24, 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:const EdgeInsets.fromLTRB(24, 0, 8, 0),
                  child: const Text("承办机构：",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                ), const Expanded(
                  child: Text("福建省大数据有限公司",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: color_FF606266,
                      )),
                )],
            ),
          )
        ],
      ),
    );
  }
}
