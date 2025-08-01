import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidinganimation});

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganimation,
      builder: (context, __) {
        return SlideTransition(
          position: slidinganimation,
          child: Text(
            textAlign: TextAlign.center,
            "Unlock a World of Free Books.",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        );
      },
    );
  }
}
