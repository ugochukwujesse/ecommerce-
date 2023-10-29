import 'package:e_commerce/models/get_all_product_response_model.dart';
import 'package:e_commerce/screen/home_screen.dart';
import 'package:e_commerce/screen/my_cart_screen.dart';
import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:e_commerce/widget/reusable_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key, required this.selectedProduct}) : super(key: key);

  final GetAllProductResponseModel selectedProduct;

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child:
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                      child: SvgPicture.asset(AppSvg.left)),
                  const Spacer(),
                  GestureDetector(
                    onTap: (){},
                      child: SvgPicture.asset(AppSvg.love)),
                ],
              ),
            ),
           Image.network(widget.selectedProduct.image),
            const SizedBox(height: 20,),
            const SizedBox(height: 0,),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(45), topRight: Radius.circular(45)),
                color: Colors.white
              ),
              child:  Padding(
                padding: const  EdgeInsets.only(left:20,right: 20),
                child:  Column(
                  children: [
                     Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width:200,
                                child: Text( widget.selectedProduct.title,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: AppTextSize.h22,
                                  fontWeight: AppFontWeight.w500,
                                  color: AppColor.textColor1
                                ),
                                ),
                              ),
                             // const  Text("Shirts",
                             //    textAlign: TextAlign.left,
                             //    style: TextStyle(
                             //        fontSize: AppTextSize.h22,
                             //        fontWeight: AppFontWeight.w500,
                             //        color: AppColor.textColor1
                             //    ),
                             //  )
                            ],
                          ),
                           Text(widget.selectedProduct.price.toString() ,
                          style: const TextStyle(
                            fontWeight: AppFontWeight.w500,
                            fontSize: AppTextSize.h18,
                            color: AppColor.textColor1
                          ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Text("A Henley shirt is a collarless pullover shirt, by a round "
                          "neckline and a placket about 3 to 5 inches (8 to 13 cm)"
                          " long and usually having 2–5 buttons.",
                      style: TextStyle(
                        fontSize: AppTextSize.h12,
                        fontWeight: AppFontWeight.w400,
                        color: AppColor.textColor1.withOpacity(0.5)
                      ),
                      ),
                    ),
                    const SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 20),
                      child: ReusableCustomButton(label: "Add to Cart", onpress: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MyCart(isPop: true,)),);
                      }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
      ),
    );
  }
}
