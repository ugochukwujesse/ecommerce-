import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class ReusableRichText extends StatelessWidget {
  const ReusableRichText({
    super.key, required this.text1, required this.text2, required this.navigate
  });
  final String text1;
  final String text2;
  final Widget navigate;

  @override
  Widget build(BuildContext context) {
    return RichText(text:
    TextSpan(
        text: text1,
        style: TextStyle(
            fontWeight: AppFontWeight.w400,
            fontSize: AppTextSize.h14,
            color: AppColor.linkColor2.withOpacity(0.5)
        ),
        children: [
          TextSpan(
              text: text2,
              style: const TextStyle(
                  fontSize: AppTextSize.h14,
                  fontWeight: AppFontWeight.w500,
                  color: AppColor.textColor1
              ),
              recognizer: TapGestureRecognizer()..onTap=()=>  Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context)=> navigate ,),)
          )
        ]
    ),
    );
  }
}
