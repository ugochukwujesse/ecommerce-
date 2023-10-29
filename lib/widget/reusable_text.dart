import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';



class ReusableText extends StatelessWidget {
  const ReusableText({
    super.key, required this.label1, required this.label2
  });
  final String label1;
  final String  label2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label1,
          style: TextStyle(
              fontSize: AppTextSize.h12,
              fontWeight: AppFontWeight.w400,
              color: AppColor.textColor1.withOpacity(0.5)
          ),
        ),
        const  Spacer(),
          Text(label2,
          style: const TextStyle(
              fontWeight: AppFontWeight.w500,
              fontSize: AppTextSize.h12,
              color: AppColor.textColor1
          ),
        ),
      ],
    );
  }
}
