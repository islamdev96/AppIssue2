//version 1.0.0+1
import 'package:flutter/material.dart';
import 'package:issue/export.dart';
import 'package:sizer/sizer.dart';
class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem(
      {Key? key,
      required this.index,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  final int index;
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           SizedBox(
            height: 4.h,
          ),
          SizedBox(
              height: 40.h,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
           SizedBox(
                  height: 4.h,
          ),
          Flexible(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style:
               TextStyle(
                  color: FuAppTheme.theme.textTheme.bodyLarge!.color,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
           SizedBox(
              height: 2.h,
          ),
          Text(
            description,
            maxLines: 3,
            textAlign: TextAlign.center,
            style:  TextStyle(
                color: Colors.grey, fontSize: 12.sp, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}



