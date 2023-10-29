import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';



class ReusableCustomButton extends StatelessWidget {
  const ReusableCustomButton({
    super.key, required this.label, required  this.onpress
  });
  final String label;
  final Function() onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpress,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.primaryColor),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 30)),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(113)
                )
            )
        ),
        child:  Padding(
          padding: const  EdgeInsets.symmetric(vertical: 20, horizontal: 30 ),
          child:  Text(label,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: AppFontWeight.w500,
                fontSize: AppTextSize.h16,
                color: AppColor.buttonTextColor
            ),
          ),
        )
    );
  }
}
