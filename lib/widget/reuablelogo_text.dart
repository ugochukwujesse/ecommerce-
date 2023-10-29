import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ReusableLogoText extends StatelessWidget {
  const ReusableLogoText({
    super.key, required this.label
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            // Transform.scale(
            //   scale: 0.4,
            //   child: SvgPicture.asset(AppSvg.logoSvg),
            // ),
            SvgPicture.asset(AppSvg.logoSmallSvg),
            const SizedBox(height: 40,),
             Text(label,
              style: const TextStyle(
                  color: AppColor.textColor1,
                  fontSize: AppTextSize.h22,
                  fontWeight: AppFontWeight.w500
              ),
            )
          ],
        ),
      ),
    );
  }
}

