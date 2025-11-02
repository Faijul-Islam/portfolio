import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CommonCard extends StatelessWidget {
  final Widget widget;
  final double mHorizontal;
  final double mVertical;
  final double pVertical;
  final double pHorizontal;
  const CommonCard({
    super.key,
    required this.widget,
    this .mHorizontal=12,
    this .mVertical=12,
     this.pVertical=10,
     this.pHorizontal=10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: pVertical.w, vertical: pHorizontal.h),
      margin: EdgeInsets.symmetric(horizontal: mHorizontal.w, vertical: mVertical.h),
      decoration: BoxDecoration(
        color: const Color(0xFFEBEBEB),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          width: 1.w,
          color: const Color(0xFFEBEBEB)
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFEEF6FC),
            offset: Offset(
              0.4,
              0.4,
            ),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          )
        ],
      ),
      child: widget,
    );
  }
}
