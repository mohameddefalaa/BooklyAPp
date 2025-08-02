import 'dart:ui';

import 'package:bookly/core/assetesdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Customeblurbutton extends StatelessWidget {
  const Customeblurbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 25,
          sigmaY: 20,
          tileMode: TileMode.repeated,
        ),
        child: GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: Colors.white.withAlpha(12),
            radius: 16,
            child: SvgPicture.asset(Assetesdata.playicon),
          ),
        ),
      ),
    );
  }
}
