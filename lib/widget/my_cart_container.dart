

import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class MyCartContainer extends StatelessWidget {
  const MyCartContainer({
    super.key,required this.label, required this.amount, required this.svg,required this.addonTap, required this.subtractOnTap,
    required this.quantity1
  });
  final String label;
  final String amount;
  final Widget svg;
  final Function() addonTap;
  final Function() subtractOnTap;
  final int quantity1;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.buttonTextColor,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.textColor1.withOpacity(0.10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 3,bottom: 3,left: 15,right: 15),
                child: svg,
              ),
            ),
          ),
          const SizedBox(width: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label,
                style: TextStyle(
                    fontSize: AppTextSize.h14,
                    fontWeight: AppFontWeight.w400,
                    color: AppColor.textColor1.withOpacity(0.5)
                ),
              ),
              const  SizedBox(height: 5,),
               Text( amount,
                style: const TextStyle(
                    fontWeight: AppFontWeight.w500,
                    fontSize: AppTextSize.h16,
                    color: AppColor.textColor1
                ),
              )
            ],
          ),
          const SizedBox(width: 30,),
          Row(
            children: [
              GestureDetector(
                onTap: addonTap,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.primaryColor.withOpacity(0.10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7,bottom: 7,right: 9,left: 9),
                    child: SvgPicture.asset(AppSvg.add2),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
               Text(quantity1.toString(),
                style: const TextStyle(
                  fontSize: AppTextSize.h14,
                  fontWeight: AppFontWeight.w400,
                  color: AppColor.textColor1,
                ),
              ),
              const SizedBox(width: 10,),
              GestureDetector(
                onTap:  subtractOnTap,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.primaryColor.withOpacity(0.10)
                  ),
                  child:  Padding(
                    padding: const  EdgeInsets.only(top: 10,bottom: 9,right: 9,left: 9),
                    child:SvgPicture.asset(AppSvg.sub),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
