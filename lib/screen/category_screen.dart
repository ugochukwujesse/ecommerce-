
import 'package:e_commerce/models/get_all_product_response_model.dart';
import 'package:e_commerce/screen/add_to_cart_screen.dart';
import 'package:e_commerce/services/product_service.dart';
import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:e_commerce/widget/category_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key, required this.selectedCategory }) : super(key: key);
  final String selectedCategory;


  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
        children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                    child: SvgPicture.asset(AppSvg.left)),
                const Spacer(),
                 Text(widget.selectedCategory,
                style: const TextStyle(
                  fontSize:AppTextSize.h22,
                  fontWeight: AppFontWeight.w500,
                  color: AppColor.textColor1,
                ),
                ),
                const Spacer()
              ],
            ),
            const SizedBox(height: 30,),
            FutureBuilder(
              future: ProductService.fetchElectronic(selectedCategory: widget.selectedCategory ),
              builder: (context, snapshot) {
                if(snapshot.connectionState== ConnectionState.waiting){
                  return  const Center(child: CircularProgressIndicator(color: AppColor.primaryColor,),);
                }
                else if(snapshot.hasData){
                  return
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 180,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20
                      ),
                      itemCount: snapshot.data?.length,
                      itemBuilder: ( context, index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  AddToCart( selectedProduct: GetAllProductResponseModel(
                                id: snapshot.data![index].id,
                                title: snapshot.data![index].title,
                                price: snapshot.data![index].price,
                                description: snapshot.data![index].description,
                                category: snapshot.data![index].category,
                                image: snapshot.data![index].image,
                                rating: Rating(rate: snapshot.data![index].rating.rate, count: snapshot.data![index].rating.count),),),),);
                          },
                          child: CategoryContainer(svg: Image.network(snapshot.data![index].image,scale: 20.0,),
                            label1: snapshot.data![index].title,
                             label2: snapshot.data![index].price,),
                        );  },
                    ),
                  );
                }
                else{
                  return Text('Data: ${snapshot.error}');
                }
              },
            )
        ],
      ),
          )
      ),
    );
  }
}
