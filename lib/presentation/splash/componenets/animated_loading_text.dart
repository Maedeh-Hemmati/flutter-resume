import 'package:flutter/material.dart';
import 'package:resume/core/utils/constants.dart';

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultPadding * 5,
      child: TweenAnimationBuilder(duration: const Duration(seconds: 2),builder: (context, value, child) => Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: grayColor,
            color: whiteColor,
            value: value,
          ),
          const SizedBox(height: defaultPadding/2,),
          Text(
            '${(value * 100).toInt()}%',style: const TextStyle(color: grayColor,fontWeight: FontWeight.bold,shadows: [
            Shadow(color: blackColor,blurRadius: 10 , offset: Offset(2,2)),
          ]),)
        ],
      ), tween: Tween(begin: 0.0,end: 1.0),),
    );
  }
}
