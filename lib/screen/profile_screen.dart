import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:e_commerce/widget/reusable_profile_tab.dart';
import 'package:e_commerce/widget/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                // fit: StackFit.loose,
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.bottomCenter,
                children: [
                 Container(
                   height: 220,
                   decoration: const BoxDecoration(
                     image: DecorationImage(
                       image:  AssetImage("image/back.png",),
                       fit: BoxFit.fill,
                     )
                   ),
                   child:  Align(
                     alignment: Alignment.topCenter,
                     child:  Padding(
                       padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
                       child: Row(
                         children: [
                           const Spacer(),
                          const  Text("Profile",
                             style: TextStyle(
                               fontSize: AppTextSize.h20,
                               fontWeight: AppFontWeight.w500,
                               color:AppColor.textColor1,
                             ),
                           ),
                           Spacer(),
                           SvgPicture.asset(AppSvg.more)
                         ],
                       ),
                     ),
                   ),
                     ),
                   const CircleAvatar(
                    radius: 67.5,
                    backgroundColor: AppColor.backgroundcolor,
                    child:  Icon(Icons.person_rounded,
                    color: AppColor.textColor1,
                      size: 60,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const Center(
                child:  Text("Alex Nikiforov",
                style: TextStyle(
                  fontWeight: AppFontWeight.w500,
                  fontSize: AppTextSize.h24,
                  color: AppColor.textColor1
                ),
                ),
              ),
              const SizedBox(height: 5,),
              Center(
                child: Text("alex@msn.com",
                style: TextStyle(
                  fontSize: AppTextSize.h16,
                  fontWeight: AppFontWeight.w400,
                  color: AppColor.textColor1.withOpacity(0.5)
                ),
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    ProfileTab(color: AppColor.primaryColor.withOpacity(0.2),
                      icon:SvgPicture.asset(AppSvg.bag) ,
                      label1: 'Progress order',
                      label2: '10+',),
                    const Spacer(),
                    ProfileTab(color: AppColor.blue.withOpacity(0.2),
                        icon: SvgPicture.asset(AppSvg.ticket),
                        label1: "Promocodes",
                        label2: "5"),
                    const Spacer(),
                    ProfileTab(color: AppColor.yellow.withOpacity(0.2),
                        icon: SvgPicture.asset(AppSvg.star),
                        label1: "Reviewes",
                        label2: "4.5K"),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              const Padding(
                padding:  EdgeInsets.only(left: 20),
                child:  Text("Personal Information",
                style: TextStyle(
                  fontWeight: AppFontWeight.w500,
                  fontSize: AppTextSize.h18,
                  color: AppColor.textColor1
                ),
                ),
              ),
             const  SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  decoration:  BoxDecoration(
                    borderRadius:const  BorderRadius.only(topRight:Radius.circular(10),topLeft:Radius.circular(10)),
                    border: Border.all(
                      width: 2,
                      color: AppColor.textColor1.withOpacity(0.2)
                    )
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      children: [
                         ReusableText(label1: 'Name:', label2: 'Chris Harison',),
                        SizedBox(height: 15,),
                        ReusableText(label1: "Email:", label2: "chris@gmail.com"),
                        SizedBox(height: 15,),
                        ReusableText(label1: "Location:", label2: "San Diego"),
                        SizedBox(height: 15,),
                        ReusableText(label1: "Zip Code:", label2: "1200"),
                        SizedBox(height: 15,),
                        ReusableText(label1: "Phone Number:", label2: "(+1) 5484 4757 84"),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
