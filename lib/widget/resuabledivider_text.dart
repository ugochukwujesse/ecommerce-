import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';


class ReusableDividerText extends StatelessWidget {
  const ReusableDividerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              width: double.infinity,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: AppColor.dividerColor.withOpacity(0.6)
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20,),
        const Text("Or",
          style: TextStyle(
              fontSize: AppTextSize.h12,
              fontWeight: AppFontWeight.w400,
              color: AppColor.textColor1
          ),
        ),
        const SizedBox(width: 20,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right:30),
            child: SizedBox(
              width: double.infinity,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: AppColor.dividerColor.withOpacity(0.6)
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
