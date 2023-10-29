

import 'package:e_commerce/models/get_all_electronic_category_response.dart';
import 'package:e_commerce/models/get_all_product_response_model.dart';
import 'package:e_commerce/screen/add_to_cart_screen.dart';
import 'package:e_commerce/screen/category_screen.dart';
import 'package:e_commerce/services/product_service.dart';
import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:e_commerce/widget/reusable_arrival_container.dart';
import 'package:e_commerce/widget/reusableclothcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
              child:
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 0, top: 10),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap:(){},
                              child: SvgPicture.asset(AppSvg.option)),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(AppSvg.location),
                              const Text("15/2 New Texas",
                                style: TextStyle(
                                    fontWeight: AppFontWeight.w400,
                                    fontSize: AppTextSize.h14,
                                    color:AppColor.textColor1
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                              onTap: (){},
                              child: SvgPicture.asset(AppSvg.notify)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text("Explore",
                      style: TextStyle(
                          fontSize: AppTextSize.h32,
                          fontWeight: AppFontWeight.w500,
                          color: AppColor.textColor1
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text("best Outfits for you",
                      style: TextStyle(
                          fontSize: AppTextSize.h20,
                          fontWeight: AppFontWeight.w400,
                          color: AppColor.textColor1.withOpacity(0.3)
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                )
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon:  Padding(
                              padding: const EdgeInsets.only(left: 20,right: 5),
                              child: Icon(Icons.search,
                                size: 26,
                                color: AppColor.textColor1.withOpacity(0.7),
                              ),
                            ),
                            hintText: "Search items...",
                            hintStyle: TextStyle(
                              fontWeight: AppFontWeight.w400,
                              fontSize: AppTextSize.h14,
                              color: AppColor.textColor1.withOpacity(0.7),
                            ),
                            // contentPadding: const EdgeInsets.only(left: 20, top: 20,bottom: 20),
                            suffixIcon: GestureDetector(
                              onTap:(){},
                              child: Container(
                                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.primaryColor,
                                ),
                                child: SvgPicture.asset(AppSvg.filter),
                              ),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    FutureBuilder<List<String>>(
                      future: ProductService.fetchCategories(),
                        builder: (context, snapshot){
                        if(snapshot.connectionState== ConnectionState.waiting){
                          return const Center(child: CircularProgressIndicator(color: AppColor.primaryColor,),);
                        }
                        else if (snapshot.hasData){
                          List<NewCategoryModel> categories =  NewCategoryModel.fetchCategory();
                          // print(snapshot.data);
                          return SizedBox(
                            height: 76,
                            child: ListView.builder(
                              itemCount:categories.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index){
                                return
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap:(){
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  CategoryScreen(selectedCategory: categories[index].name, ),),);

                                          },
                                          child: ReusableClotheContainer(label:categories[index].name, svg: Padding(
                                            padding: const EdgeInsets.only(top: 10, left: 20, right: 20,bottom: 5),
                                            child: SvgPicture.asset(categories[index].picture),
                                          ),),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                            ),
                          );
                        }
                        else {
                          return Text('Data: ${snapshot.error}');
                        }
                        }
                    ),

                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          const Text("New Arrival",
                            style: TextStyle(
                              fontWeight: AppFontWeight.w500,
                              fontSize: AppTextSize.h20,
                              color: AppColor.textColor1,
                            ),
                          ),
                          const Spacer(),
                          Text("See All",
                            style: TextStyle(
                              fontSize: AppTextSize.h14,
                              fontWeight: AppFontWeight.w400,
                              color: AppColor.textColor1.withOpacity(0.5),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    FutureBuilder(
                      future: ProductService.fetchProduct(),
                      builder:( context,  snapshot) {

                        if(snapshot.connectionState== ConnectionState.waiting){
                          return const Center(child: CircularProgressIndicator(color: AppColor.primaryColor,),);
                        }
                        else if(snapshot.hasData) {
                           print(snapshot.data);
                          return  SizedBox(
                            height: 192,
                            child: ListView.builder(
                              itemCount:snapshot.data?.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index) {
                                return
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20,),
                                    child: GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context)=> AddToCart(selectedProduct:GetAllProductResponseModel(
                                            id: snapshot.data![index].id,
                                            title: snapshot.data![index].title,
                                            price: snapshot.data![index].price,
                                            description: snapshot.data![index].description,
                                            category: snapshot.data![index].category,
                                            image: snapshot.data![index].image,
                                            rating: snapshot.data![index].rating,
                                        ),
                                        ),
                                        ),
                                      );
                                    },
                                    child: ArrivalContainer(
                                        color: const Color(0xFFffffff),
                                        svg: Image.network(snapshot.data![index].image,),
                                        label1: snapshot.data![index].title,
                                        label2:  snapshot.data![index].price,
                                    ),
                                ),
                                  );
                              },
                            ),
                          );
                        }else {
                          return Text('Data: ${snapshot.error}');
                        }
                      },
                    ),
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}

class NewCategoryModel{
  NewCategoryModel({required this.name, required this.picture,});
  final String name;
  final String picture;

  static List<NewCategoryModel> fetchCategory (){
    return [
      NewCategoryModel(name: 'electronics', picture: AppSvg.electric ,),
      NewCategoryModel(name: 'jewelery', picture: AppSvg.tshirt,),
      NewCategoryModel(name: 'men\'s clothing', picture: AppSvg.pants),
      NewCategoryModel(name: 'women\'s clothing', picture: AppSvg.tshirt,),
    ];
  }
}
