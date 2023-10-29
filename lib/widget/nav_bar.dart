import 'package:e_commerce/screen/favorite_screen.dart';
import 'package:e_commerce/screen/home_screen.dart';
import 'package:e_commerce/screen/my_cart_screen.dart';
import 'package:e_commerce/screen/profile_screen.dart';
import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [
   const HomeScreen(),
    const MyCart(isPop:false,),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
  int currentIndex=0;
  void onTap(int index){
setState(() {
  currentIndex=index;
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedIconTheme: const IconThemeData(color: AppColor.primaryColor),
        selectedItemColor:  AppColor.primaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: AppColor.textColor1.withOpacity(0.25),
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvg.home2),
            label: "Home",
          activeIcon:SvgPicture.asset(AppSvg.home1,
          colorFilter:const  ColorFilter.mode(AppColor.primaryColor, BlendMode.srcIn),
          ),

        ),
        BottomNavigationBarItem(icon: SvgPicture.asset(AppSvg.cart1),
            label: "Order",
          activeIcon:SvgPicture.asset(AppSvg.cart2,
          colorFilter: const ColorFilter.mode(AppColor.primaryColor, BlendMode.srcIn),
          ),
        ),
        BottomNavigationBarItem(icon: SvgPicture.asset(AppSvg.heart1),
            label: "Product",
          activeIcon: SvgPicture.asset(AppSvg.heart2,
          colorFilter: const ColorFilter.mode(AppColor.primaryColor, BlendMode.srcIn),
          ),
        ),
        BottomNavigationBarItem(icon: SvgPicture.asset(AppSvg.profile2),
            label: "Customers",
          activeIcon: SvgPicture.asset(AppSvg.profile,
          colorFilter: const ColorFilter.mode(AppColor.primaryColor, BlendMode.srcIn),
          )
        ),
      ],), );
  }
}
