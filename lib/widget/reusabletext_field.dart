import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ReusableTextField extends StatelessWidget {
  const ReusableTextField({
    super.key,required this.hint, required this.svg
  });
  final String hint;
  final String svg;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none
              )
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10,),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.primaryColor.withOpacity(0.10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 0, right: 12, bottom: 0, left: 12),
                child: SvgPicture.asset(svg),
              ),
            ),
          ),
          hintText: hint,
          hintStyle:  TextStyle(
              color: AppColor.textColor1.withOpacity(0.5),
              fontWeight: AppFontWeight.w400,
              fontSize: AppTextSize.h12
          )



      ),

    );
  }
}
