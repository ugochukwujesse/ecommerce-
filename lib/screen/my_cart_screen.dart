
import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:e_commerce/widget/my_cart_container.dart';
import 'package:e_commerce/widget/reusable_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyCart extends StatefulWidget {
  const MyCart({Key? key, required this.isPop}) : super(key: key);
  final bool isPop;
  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {


 final  List<ProductName> _cartItems = ProductName.fetchCart();

  List<ProductName> get cartItems => _cartItems;

  void updateQuantity(int index, int newQuantity) {
    _cartItems[index] = _cartItems[index].copyWith(quantity: newQuantity);
    setState(() {

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  widget.isPop?
                  GestureDetector(
                    onTap: (){
                     Navigator.of(context).pop();
                    },
                      child: SvgPicture.asset(AppSvg.left)):
                      const SizedBox.shrink(),
                  const Spacer(),
                  const Text("My Cart",
                   style: TextStyle(
                     fontWeight: AppFontWeight.w500,
                     fontSize: AppTextSize.h20,
                     color: AppColor.textColor1,
                   ),
                   ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 40,),
              Expanded(
                child: ListView.builder(
                    itemCount:_cartItems.length,
                    itemBuilder: (context,index){

                      int quantity = _cartItems[index].quantity;


                 return Padding(
                   padding: const EdgeInsets.only(bottom: 20),
                   child: MyCartContainer(label: _cartItems[index].name,
                     amount: _cartItems[index].amount,
                     svg: SvgPicture.asset(AppSvg.top1,),
                     addonTap: () {
                     updateQuantity(index, _cartItems[index].quantity+1);

                     },
                     subtractOnTap: () {
                     if(_cartItems[index].quantity>1){
                       setState(() {
                         updateQuantity(index, _cartItems[index].quantity-1);
                       });
                     }

                     }, quantity1: quantity,
                   ),
                 );
                }),
              ),
              const SizedBox(height: 0,),
             const Padding(
               padding:  EdgeInsets.only(top: 20),
               child:   Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal   :",
                    style: TextStyle(
                      fontWeight: AppFontWeight.w400,
                      fontSize: AppTextSize.h14,
                      color: AppColor.textColor1,
                    ),
                    ),
                    Text("N740",
                    style: TextStyle(
                      fontSize: AppTextSize.h18,
                      fontWeight: AppFontWeight.w500,
                      color: AppColor.textColor1
                    ),
                    )
                  ],
                ),
             ),
              const SizedBox(height: 30,),
              ReusableCustomButton(label: "Checkout", onpress: (){})
            ],
          ),
        ),
      ),
    );
  }
}
class ProductName{
  ProductName({required this.name, required this.amount, required this.quantity});
  final String name;
  final String amount;
  final int quantity;
  ProductName copyWith({int? quantity}) {
    return ProductName(
      name: name,
      amount: amount,
      quantity: quantity ?? this.quantity,
    );
  }
 static List<ProductName> fetchCart (){
   return [
   ProductName(name: 'Henley Shirts', amount: "N250", quantity: 1),
   ProductName(name: 'Casual Shirts', amount: "N145", quantity: 1),
   ProductName(name: 'Casual Nolin', amount: "N225", quantity: 1),
   ProductName(name: 'Casual Nolin', amount: "N225", quantity: 1),
   ];
   }
}

