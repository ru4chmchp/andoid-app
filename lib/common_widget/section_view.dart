import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:flutter/material.dart';

class SectionView extends StatelessWidget {
  final String title;
  final bool isShowSeeAllButton;
  final VoidCallback onPress;
  final EdgeInsets? padding;
  const SectionView(
      {super.key,
      required this.title,
      this.isShowSeeAllButton = true,
      this.padding,
      required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: DColor.darkGray,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          TextButton(
            onPressed: onPress,
            child: Text(
              "See All",
              style: TextStyle(
                  color: DColor.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
