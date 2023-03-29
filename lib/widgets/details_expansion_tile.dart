import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsExpansionTile extends StatefulWidget {
  DetailsExpansionTile({
    required this.title,
    required this.subTitle,
    this.isExpanded = false,
    this.initiallyExpanded = false,
    super.key,
  });

  String title;
  String subTitle;
  bool isExpanded;
  bool initiallyExpanded;

  @override
  State<DetailsExpansionTile> createState() => _DetailsExpansionTileState();
}

class _DetailsExpansionTileState extends State<DetailsExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.title),
      initiallyExpanded: widget.initiallyExpanded,
      childrenPadding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
      trailing:
          widget.isExpanded ? const Icon(Icons.remove) : const Icon(Icons.add),
      onExpansionChanged: (value) => setState(() {
        widget.isExpanded = value;
      }),
      children: [
        Text(widget.subTitle),
      ],
    );
  }
}
