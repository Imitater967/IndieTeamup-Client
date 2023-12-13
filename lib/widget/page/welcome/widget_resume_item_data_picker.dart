import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';

class ResumeItemDataPicker extends StatelessWidget{
  String title;
  String defaultItem;

  ResumeItemDataPicker(this.title, this.defaultItem);

  @override
  Widget build(BuildContext context) {
    return
      Material(
        child: InkWell(
          onTap: () {},
          child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 102,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: Constants.resumeItemTitleTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      //https://pub.dev/packages/flutter_pickers#%E6%97%B6%E9%97%B4%E9%80%89%E6%8B%A9%E5%99%A8
                      Text(defaultItem),
                      Spacer(),
                      Image.asset("assets/art/welcome/GreaterSign.png")
                    ],
                  ),
                  Constants.underline,
                ],
              )),
        ),
      );
  }

}