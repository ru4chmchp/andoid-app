import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Container(
      width: media.width * 0.9,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  "assets/imgs/close.png",
                  width: 20,
                  height: 20,
                ),
              )
            ],
          ),
          Image.asset(
            "assets/imgs/bottom_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            "assets/imgs/order_failed.png",
            width: media.width * 0.5,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Oops! Order Failed",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: DColor.primaryText,
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Something went tembly wrong",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: DColor.secondaryText,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 40,
          ),
          RoundButton(title: "Please, Try Again", onPressed: () {}),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Back to home",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: DColor.primaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
