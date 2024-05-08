import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class OrderAcceptView extends StatefulWidget {
  const OrderAcceptView({super.key});

  @override
  State<OrderAcceptView> createState() => _OrderAcceptViewState();
}

class _OrderAcceptViewState extends State<OrderAcceptView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/imgs/bottom_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  const Spacer(),
                  Image.asset(
                    "assets/imgs/order_accpeted.png",
                    width: media.width * 0.7,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Successfuly",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DColor.primaryText,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Complete",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DColor.secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Spacer(),
                  RoundButton(title: "Track Order", onPressed: () {}),
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
            ),
          )
        ],
      ),
    );
  }
}
