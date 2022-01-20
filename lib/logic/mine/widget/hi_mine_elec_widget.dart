import 'package:flutter/material.dart';
import 'package:flutter_project/base/config/hi_colors.dart';

class HiMineElecWidget extends StatelessWidget {
  const HiMineElecWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "医保电子凭证",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: color_FF303133,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/mine/ylz_mine_bank_card.png',
                        fit: BoxFit.fill),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text("银行卡",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: color_FF303133,
                            fontSize: 16,
                          )),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/mine/ylz_mine_use_record.png',
                        fit: BoxFit.fill),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text("使用记录",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: color_FF303133,
                            fontSize: 16,
                          )),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/mine/ylz_mine_deal_record.png',
                        fit: BoxFit.fill),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text("交易记录",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: color_FF303133,
                            fontSize: 16,
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}