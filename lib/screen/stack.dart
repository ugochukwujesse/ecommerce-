import 'package:flutter/material.dart';


class StackW extends StatefulWidget {
  const StackW({Key? key}) : super(key: key);

  @override
  State<StackW> createState() => _StackWState();
}

class _StackWState extends State<StackW> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
// GestureDetector(
// onTap: (){},
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15),
// border: Border.all(
// width: 2,
// color: Colors.white
// ),
// color: Colors.white
// ),
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 10, left: 13, right: 13,bottom: 5),
// child: SvgPicture.asset(AppSvg.second),
// ),
// const Padding(
// padding:   EdgeInsets.only(bottom: 5),
// child:  Text("Shirt",
// style: TextStyle(
// fontSize: AppTextSize.h12,
// fontWeight: AppFontWeight.w500,
// color: AppColor.textColor1
// ),
// ),
// )
// ],
// ),
// ),
// ),