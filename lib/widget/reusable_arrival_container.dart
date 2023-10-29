import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ArrivalContainer extends StatelessWidget {
  const ArrivalContainer({
    super.key, required this.color, required this.svg, required this.label1, required this.label2
  });
  final String label1;
  final Color color;
  final Widget svg;
  final double label2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding:const  EdgeInsets.only(left: 10,right: 10,top: 5),
                decoration : BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: color
                ),
                child: svg,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10, top: 10,bottom: 10),
              child: Column(
                children: [
                  Text(label1,
                    textAlign: TextAlign.center,
                    // overflow: TextOverflow.ellipsis,
                    style:const  TextStyle(
                        fontWeight: AppFontWeight.w400,
                        fontSize: AppTextSize.h12,
                        color: AppColor.textColor1,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text('\$$label2',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: AppFontWeight.w500,
                        fontSize: AppTextSize.h12,
                        color: AppColor.textColor1
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
