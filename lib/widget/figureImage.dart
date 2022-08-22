import 'package:flutter/cupertino.dart';

Widget figureImage(bool visible, String path) {
  return Visibility(
    visible: visible,
    child: Container(
      height: 200,
      width: 200,
      child: Image.asset(path),
    ),
  );
}
