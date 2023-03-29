import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterWidget extends StatelessWidget {
  FilterWidget({
    required this.title,
    this.icon,
    super.key,
  });

  late String title;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      // borderOnForeground: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.r),
        side: const BorderSide(
          color: Colors.grey,
        ),
      ),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.r),
        child: icon != null
            ? Row(
                children: [
                  Icon(icon),
                  Text(title),
                ],
              )
            : Center(child: Text(title)),
      ),
    );
  }
}
