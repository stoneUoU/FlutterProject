import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/base/config/hi_colors.dart';
import 'package:flutter_project/base/config/hi_const.dart';
import 'package:flutter_project/base/tools/hi_regular_tool.dart';
import 'package:flutter_project/base/tools/hi_textfield_tool.dart';
import 'package:flutter_project/logic/login/model/hi_login_model.dart';
import 'package:flutter_project/net/dao/login/hi_login_dao.dart';
import 'package:flutter_project/net/db/hi_cache.dart';
import 'package:fluttertoast/fluttertoast.dart';

typedef void OnCodeLoginPageListener(bool isSuccess);

class HiCodeLoginPage extends StatefulWidget {
  OnCodeLoginPageListener? onCodeLoginPageListener;

  HiCodeLoginPage({Key? key, this.onCodeLoginPageListener}) : super(key: key);

  @override
  _HiCodeLoginPageState createState() => _HiCodeLoginPageState();
}

class _HiCodeLoginPageState extends State<HiCodeLoginPage> {
  //手机号的控制器
  TextEditingController telController = TextEditingController();

  //密码的控制器
  TextEditingController codeController = TextEditingController();

  FocusNode _telFocusNode = FocusNode();

  FocusNode _codeFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new SingleChildScrollView(
      child: _getBody(),
    ));
  }

  Widget _getBody() {
    return GestureDetector(
        onTap: () {
          _telFocusNode.unfocus();
          _codeFocusNode.unfocus();
        },
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
                  height: ScreenH(context) - TabbarSafeBottomM(context),
                  width: ScreenW(context),
                  padding: EdgeInsets.fromLTRB(
                      16, StatusH(context) + kToolbarHeight, 16, 0),
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Container(
                            margin: EdgeInsets.fromLTRB(0, 16.0, 0, 0),
                            child: new Image.asset(
                                'assets/images/login/login_pic.png'),
                          ),
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                            margin: EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                            child: new Text("欢迎回来",
                                style: new TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    color: color_FF303133),
                                textAlign: TextAlign.left),
                          ),
                        ],
                      ),
                      buildPhoneRow(),
                      new Row(
                        children: <Widget>[
                          new Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              height: 1,
                              width: ScreenW(context) - 32,
                              color: color_FFCECECE),
                        ],
                      ),
                      buildCodeRow(),
                      new Row(
                        children: <Widget>[
                          new Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              height: 1,
                              width: ScreenW(context) - 32,
                              color: color_FFCECECE),
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                              margin: EdgeInsets.fromLTRB(0, 58.0, 0, 0),
                              height: 44,
                              width: ScreenW(context) - 32,
                              child: new RaisedButton(
                                onPressed: () {
                                  String telString = telController.text;
                                  String codeString = codeController.text;
                                  _fireLoginNet(telString, codeString);
                                },
                                shape: StadiumBorder(),
                                child: new Text("登录",
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.white)),
                                color: color_FF4272e0,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                new Positioned(
                  left: 0.0,
                  right: 0.0,
                  top: 0.0,
                  child: _makeStatusAndNaviBar(),
                ),
              ],
            )
          ],
        ));
  }

  Row buildPhoneRow() {
    return new Row(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.fromLTRB(0, 32.0, 0, 0),
          height: 50,
          width: ScreenW(context) - 32,
          child: new HiTextFieldTool(
              focusNode: _telFocusNode,
              child: TextField(
                autocorrect: false,
                focusNode: _telFocusNode,
                controller: telController,
                textAlign: TextAlign.left,
                //文本对齐方式
                style: TextStyle(fontSize: 16.0, color: Colors.black),
                //输入文本的样式
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  filled: true,
                  hintText: '手机号',
                  hintStyle: TextStyle(fontSize: 16.0, color: Colors.black38),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
                cursorColor: color_FF4272e0,
              )),
        ),
      ],
    );
  }

  Row buildCodeRow() {
    return new Row(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
          height: 50,
          width: ScreenW(context) - 120,
          child: new HiTextFieldTool(
              focusNode: _codeFocusNode,
              child: TextField(
                autocorrect: false,
                focusNode: _codeFocusNode,
                controller: codeController,
                obscureText: true,
                //是否是密码
                textAlign: TextAlign.left,
                //文本对齐方式
                style: TextStyle(fontSize: 16.0, color: Colors.black),
                //输入文本的样式
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: '登录密码',
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  hintStyle: TextStyle(fontSize: 16.0, color: Colors.black38),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
                cursorColor: color_FF4272e0,
              )),
        ),
        GestureDetector(
          onTap: () {
            // 按下
            _telFocusNode.unfocus();
            _codeFocusNode.unfocus();
            telController.text = "15717914505";
            if (!HiRegularTool.MobileIsValidated(telController.text)) {
              Fluttertoast.showToast(
                  msg: "请输入正确的手机号！", gravity: ToastGravity.CENTER);
              return;
            }
            // HiNavigator().onJumpTo(RouteStatus.forgetPwd,
            //     args: {"telString": telController.text});
          },
          child: new Container(
              margin: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
              child: new Text("忘记密码",
                  style: new TextStyle(fontSize: 16.0, color: color_FF4272e0),
                  textAlign: TextAlign.right)),
        )
      ],
    );
  }

  Widget _makeStatusAndNaviBar() {
    return new Container(
        width: ScreenW(context),
        height: StatusH(context) + kToolbarHeight,
        child: new Container(
          margin: EdgeInsets.fromLTRB(16.0, StatusH(context), 16.0, 0),
          width: ScreenW(context) - 32.0,
          height: kToolbarHeight,
          child: new Stack(children: <Widget>[
            new Align(
              alignment: FractionalOffset.centerLeft,
              child: GestureDetector(
                onTap: () {
                  // 按下
                  Navigator.pop(context);
                  if (widget.onCodeLoginPageListener != null) {
                    widget.onCodeLoginPageListener!(false);
                  }
                  ;
                },
                child: new Container(
                  width: 60,
                  color: Colors.white,
                  height: kToolbarHeight,
                  child: Row(
                    children: <Widget>[
                      new Image.asset(
                          'assets/images/login/login_icon_guanbi.png')
                    ],
                  ),
                ),
              ),
            ),
            new Align(
              alignment: FractionalOffset.centerRight,
              child: GestureDetector(
                onTap: () {
                  // HiNavigator().onJumpTo(RouteStatus.register, args: {
                  //   "onCodeLoginPageListener": (bool isSuccess) {
                  //     Navigator.pop(context);
                  //     if (widget.onCodeLoginPageListener != null) {
                  //       widget.onCodeLoginPageListener!(isSuccess);
                  //     }
                  //   }
                  // });
                },
                child: new Text("注册",
                    style: new TextStyle(fontSize: 16.0, color: color_FF4272e0),
                    textAlign: TextAlign.right),
              ),
            ),
          ]),
        ));
  }

  Future<Null> _fireLoginNet(String telStr, String codeStr) async {
    if (!HiRegularTool.MobileIsValidated(telStr)) {
      Fluttertoast.showToast(msg: "请输入正确的手机号！", gravity: ToastGravity.CENTER);
      return;
    } else if (!HiRegularTool.LoginCodeIsValidated(codeStr)) {
      Fluttertoast.showToast(msg: "请输入密码！", gravity: ToastGravity.CENTER);
      return;
    } else {
      var result = await HiLoginDao.login(telStr, codeStr);
      if (result["code"] != 1) {
        Fluttertoast.showToast(
            msg: result["msg"] ?? "登录失败！", gravity: ToastGravity.CENTER);
        return;
      }
      HiLoginModel model = HiLoginModel.fromJson(result["result"]);
      Fluttertoast.showToast(
          msg: result["msg"] ?? "登录成功！", gravity: ToastGravity.CENTER);
      HiCache.getInstance()
          .setString("personalInfo", json.encode(model.toJson()));
      Navigator.pop(context);
      if (widget.onCodeLoginPageListener != null) {
        widget.onCodeLoginPageListener!(true);
      }
    }
  }
}
