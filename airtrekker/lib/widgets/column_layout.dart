import 'package:airtrekker/utils/app_layout.dart';
import 'package:airtrekker/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final bool? isColor;
  final String firstText;
  final String secondText;
  const AppColumnLayout({super.key,required this.firstText, required this.secondText, required this.alignment,this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
      ],
    );
  }
}