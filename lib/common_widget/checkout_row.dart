import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:flutter/material.dart';

class CheckoutRow extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onPressed;

  const CheckoutRow(
      {super.key,
      required this.title,
      required this.value,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Text(title,
                    style: TextStyle(
                        color: DColor.secondaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                Expanded(
                  child: Text(value,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: DColor.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
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
