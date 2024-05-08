import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/checkout_row.dart';
import 'package:bach_hoa_xanh/common_widget/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Checkout",
                      style: TextStyle(
                          color: DColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/imgs/close.png",
                      width: 15,
                      height: 15,
                      color: DColor.primaryText,
                    ),
                  ),
                ]),
          ),
          const Divider(
            color: Colors.black26,
            height: 1,
          ),
          CheckoutRow(
              title: "Delivery", value: "Select Medthod", onPressed: () {}),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text("Payment",
                        style: TextStyle(
                            color: DColor.secondaryText,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                    const Spacer(),
                    Image.asset(
                      "assets/imgs/master.png",
                      width: 30,
                    ),
                    SizedBox(
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
              const Divider(
                color: Colors.black26,
                height: 1,
              ),
            ],
          ),
          CheckoutRow(
              title: "Promo Code", value: "Pick discount", onPressed: () {}),
          CheckoutRow(title: "Total Code", value: "\$18.96", onPressed: () {}),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: DColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                  TextSpan(text: "Để tiếp tục, bạn phải đồng ý với các"),
                  TextSpan(
                    text: " Dịch vụ",
                    style: TextStyle(
                      color: DColor.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Bấm vào dịch vụ");
                      },
                  ),
                  TextSpan(text: " và "),
                  TextSpan(
                      text: "Điều khoảng",
                      style: TextStyle(
                        color: DColor.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Bấm vào điều khoảng");
                        }),
                  TextSpan(
                    text: " của chúng tôi!",
                  )
                ])),
          ),
          RoundButton(title: "Place Ordor", onPressed: () {}),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
