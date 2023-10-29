import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';



class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key, required this.svg, required this.label1, required this.label2
  });
  final String label1;
  final double label2;
  final Widget svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          color: AppColor.buttonTextColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 1,
              color: AppColor.primaryColor
          )
      ),
      child:Column(
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.only(top: 20,bottom: 20),
            child: svg,
          ),

           Container(
             width: 150,
             child: Text( label1,
               overflow: TextOverflow.ellipsis,
               style: const TextStyle(
                 fontWeight: AppFontWeight.w400,
                 fontSize: AppTextSize.h12,
                 color: AppColor.textColor1,
               ),
             ),
           ),
           const SizedBox(height: 10,),
            Text( "\$$label2",
             style:const  TextStyle(
               fontSize: AppTextSize.h20,
               fontWeight: AppFontWeight.w500,
               color: AppColor.primaryColor,
             ),
           )
        ],
      ) ,
    );
  }
}
