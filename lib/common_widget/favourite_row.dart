import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:flutter/material.dart';

class FavouriteRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;

  const FavouriteRow({super.key, required this.pObj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Image.asset(
                  pObj["icon"],
                  width: 60,
                  height: 65,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pObj["name"],
                      style: TextStyle(
                          color: DColor.darkGray,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "${pObj["qty"]}${pObj["unit"]}",
                      style: TextStyle(
                          color: DColor.darkGray,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  pObj["price"],
                  style: TextStyle(
                      color: DColor.darkGray,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/imgs/next.png",
                  color: DColor.primaryText,
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black26,
          height: 1,
        ),
      ],
    );
  }
}
