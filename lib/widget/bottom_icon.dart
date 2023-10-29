import 'package:e_commerce/utility/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




class BottomIcon extends StatelessWidget {
  const BottomIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: (){},
            child: SvgPicture.asset(AppSvg.faceBok)),
        const SizedBox(width: 30,),
        GestureDetector(
            onTap: (){},
            child: SvgPicture.asset(AppSvg.google))
      ],
    );
  }
}