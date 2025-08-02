import 'package:bookly/core/assetesdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3, top: 45, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assetesdata.logo, height: 16.h, width: 75.w),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              Assetesdata.searchicon,
              height: 25.h,
              width: 25.w,
            ),
          ),
        ],
      ),
    );
  }
}
