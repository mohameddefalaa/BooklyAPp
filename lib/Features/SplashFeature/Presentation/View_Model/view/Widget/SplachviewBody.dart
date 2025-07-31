import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SpalshViewBody extends StatelessWidget {
  const SpalshViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/Logo.svg',
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 18,
          ),
        ),
        Gap(MediaQuery.of(context).size.height / 45),
        Text(
          "Unlock a World of Free Books.",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
