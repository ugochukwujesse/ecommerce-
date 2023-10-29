import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';


class ReusableClotheContainer extends StatelessWidget {
  const ReusableClotheContainer({
    super.key,required this.label, required this.svg
  });
  final String label;
  final Widget svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 2,
              color: AppColor.textColor1.withOpacity(0.05)
          )
      ),
      child: Column(
        children: [
          svg,
          Padding(
            padding:  const EdgeInsets.only(bottom: 5,left: 10,right: 10),
            child:  Text(label,
              style: TextStyle(
                  fontSize: AppTextSize.h12,
                  fontWeight: AppFontWeight.w500,
                  color: AppColor.textColor1.withOpacity(0.5)
              ),
            ),
          )
        ],
      ),
    );
  }
}
