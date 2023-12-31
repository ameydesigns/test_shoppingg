

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_shopping/utils/color_constant.dart';

class MyTextWithIcons extends StatelessWidget {
  final String textValue;
  final double fontSized;
  final String fontName;
  final FontWeight fontWeight;
  final double imageWidth;
  final double imageHeight;
  const MyTextWithIcons({Key? key, required this.textValue, required this.fontSized, required this.fontName, required this.fontWeight, required this.imageWidth, required this.imageHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('assets/images/map_pin.png',width: imageWidth,height: imageHeight),
            const SizedBox(width: 10),
            Flexible(
              child: Column(
                children: <Widget>[
                  Shimmer.fromColors(
                    enabled: false,
                    baseColor: Colors.black,
                    highlightColor: greenColor,
                    child: Text(textValue,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontFamily: fontName,
                          fontSize: fontSized,
                          fontWeight: fontWeight,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
