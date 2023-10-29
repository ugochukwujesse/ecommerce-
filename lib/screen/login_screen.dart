import 'package:e_commerce/screen/forgot_password.dart';
import 'package:e_commerce/screen/signup_screen.dart';
import 'package:e_commerce/utility/app_color.dart';
import 'package:e_commerce/utility/app_svg.dart';
import 'package:e_commerce/utility/app_text.dart';
import 'package:e_commerce/utility/appfont_weight.dart';
import 'package:e_commerce/widget/bottom_icon.dart';
import 'package:e_commerce/widget/nav_bar.dart';
import 'package:e_commerce/widget/resuabledivider_text.dart';
import 'package:e_commerce/widget/reuablelogo_text.dart';
import 'package:e_commerce/widget/reusable_custom_button.dart';
import 'package:e_commerce/widget/reusablerich_text.dart';
import 'package:e_commerce/widget/reusabletext_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only( left: 20, right: 20,),
            child: Column(
              children: [
                const ReusableLogoText(label: 'Login',),
                const SizedBox(height: 30,),
                const ReusableTextField(hint: "Email", svg: AppSvg.emailSvg),
                const SizedBox(height: 20,),
                const ReusableTextField(hint: "Password", svg: AppSvg.lockSvg),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(text:  TextSpan(
                      text: "Forgot password?",
                      style: const TextStyle(
                        fontSize: AppTextSize.h12,
                        fontWeight: AppFontWeight.w400,
                        color: AppColor.textColor1
                      ),
                      recognizer:TapGestureRecognizer()..onTap=()=>  Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=>const ForgotPasswordScreen()),)
                    ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                  ReusableCustomButton(label: "Login",
                      onpress: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context)=>const NavBar(),),);
                      }),
                const SizedBox(height: 30,),
                 const ReusableDividerText(),
                const SizedBox(height: 20,),
                const BottomIcon(),
                const SizedBox(height: 30,),
               const ReusableRichText(text1: "Don’t have an account?", text2: "Sign Up", navigate: SignUpScreen())
              ],
            ),
          ),
        ),
      ),
    );
  }
}

