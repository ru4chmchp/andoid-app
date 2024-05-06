import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  final Map fObj;
  final bool isSelect;
  final VoidCallback onPressed;
  const FilterRow(
      {super.key,
      required this.fObj,
      required this.isSelect,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Image.asset(
              isSelect
                  ? "assets/imgs/checkbox_check.png"
                  : "assets/imgs/checkbox.png",
              width: 25,
              height: 25,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(fObj["name"],
                  style: TextStyle(
                      color: isSelect ? DColor.primary : DColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
            ),
          ],
        ),
      ),
    );
  }
}
