import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';




class ProfileTab extends StatelessWidget {
  const ProfileTab({
    super.key, required this.color, required this.icon, required this.label1, required this.label2
  });
  final Color color;
  final Widget icon;
  final String label1;
  final String label2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.buttonTextColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30,top: 7),
            child: Container(
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: icon ,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text(label1,
            style: TextStyle(
              fontWeight: AppFontWeight.w500,
              fontSize: AppTextSize.h12,
              color: AppColor.textColor1.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 10,),
           Padding(
            padding: const  EdgeInsets.only(bottom: 7),
            child:  Text(label2,
              style:const  TextStyle(
                fontSize: AppTextSize.h14,
                fontWeight: AppFontWeight.w500,
                color: AppColor.textColor1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
