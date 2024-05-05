import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:flutter/material.dart';

class ExploreCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  const ExploreCell({
    super.key,
    required this.pObj,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var color = (pObj["color"] as Color? ?? DColor.primary);
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color.withOpacity(0.25),
            border: Border.all(color: color, width: 1),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  pObj["icon"],
                  width: 120,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const Spacer(),
            Text(
              pObj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: DColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
