import 'package:e_commerce/screen/home_screen.dart';
import 'package:e_commerce/screen/login_screen.dart';
import 'package:e_commerce/screen/terms_condition_screen.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/widget/bottom_icon.dart';
import 'package:e_commerce/widget/nav_bar.dart';
import 'package:e_commerce/widget/resuabledivider_text.dart';
import 'package:e_commerce/widget/reuablelogo_text.dart';
import 'package:e_commerce/widget/reusable_custom_button.dart';
import 'package:e_commerce/widget/reusablerich_text.dart';
import 'package:e_commerce/widget/reusabletext_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const ReusableLogoText(label: 'Sign Up',),
                  const SizedBox(height: 30,),
                  const ReusableTextField(hint: 'Name', svg:AppSvg.profile),
                  const SizedBox(height: 20,),
                  const ReusableTextField(hint: "Email", svg: AppSvg.emailSvg),
                  const SizedBox(height: 20,),
                  const ReusableTextField(hint: "Password", svg: AppSvg.lockSvg),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                     SvgPicture.asset(AppSvg.tick),
                      const SizedBox(width: 10,),
                      const ReusableRichText(text1: "I accept all the", text2: " Terms & Conditions", navigate: TermsAndCondition()),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  ReusableCustomButton(label: "Sign Up",
                      onpress:(){
                     Navigator.of(context).pushReplacement(
                     MaterialPageRoute(builder: (context)=>const NavBar(),),);
                     }
                      ),
                  const SizedBox(height: 30,),
                  const ReusableDividerText(),
                  const SizedBox(height: 20,),
                  const BottomIcon(),
                  const SizedBox(height: 30,),
                  const ReusableRichText(text1: "Already have an account?", text2: "Log In", navigate: LoginScreen()),
                  const SizedBox(height: 30,)
                ],
              ),
            ),
        ),
      ),
    );
  }
}
