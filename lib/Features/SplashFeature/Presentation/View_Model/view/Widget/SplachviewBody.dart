import 'package:bookly/Features/SplashFeature/Presentation/View_Model/view/Widget/slidingtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SpalshViewBody extends StatefulWidget {
  const SpalshViewBody({super.key});

  @override
  State<SpalshViewBody> createState() => _SpalshViewBodyState();
}

class _SpalshViewBodyState extends State<SpalshViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    super.initState();

    animationcontroller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidinganimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset.zero,
    ).animate(animationcontroller);
    animationcontroller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationcontroller.dispose(); // to avoid memory leak ;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/Logo.svg',

            height: MediaQuery.of(context).size.height / 18,
          ),
        ),
        Gap(MediaQuery.of(context).size.height / 45),
        SlidingText(slidinganimation: slidinganimation),
      ],
    );
  }
}
