import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailVIewState();
}

class _ProductDetailVIewState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.maxFinite,
                  height: media.width * 0.8,
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F3F2),
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: Image.asset("assets/imgs/apple_red.png",
                      width: media.width * 0.8),
                ),
                SafeArea(
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/imgs/back.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/imgs/share.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Nartural Red Apple",
                          style: TextStyle(
                              color: DColor.primaryText,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/imgs/fav.png",
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "1kg, Price",
                    style: TextStyle(
                        color: DColor.secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/imgs/subtack.png",
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: const Color(0xffF2F3F2),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: DColor.placeholder.withOpacity(0.5),
                                width: 1)),
                        alignment: Alignment.center,
                        child: Text(
                          "1",
                          style: TextStyle(
                              color: DColor.primaryText,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/imgs/add_green.png",
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$4.99",
                        style: TextStyle(
                            color: DColor.primaryText,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Product Detail",
                          style: TextStyle(
                              color: DColor.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/imgs/detail_open.png",
                          color: DColor.primaryText,
                          height: 15,
                          width: 15,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Apples are .......................................ádasdasdasdasdasd asd asd á d á dá d asd á d  d dddddđs sdasdas dá dsd ad",
                    style: TextStyle(
                        color: DColor.secondaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Nutrions",
                          style: TextStyle(
                              color: DColor.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8),
                        decoration: BoxDecoration(
                          color: DColor.placeholder.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "100gr",
                          style: TextStyle(
                              color: DColor.secondaryText,
                              fontSize: 9,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/imgs/next.png",
                          color: DColor.primaryText,
                          height: 15,
                          width: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Review",
                          style: TextStyle(
                              color: DColor.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      IgnorePointer(
                        ignoring: true,
                        child: RatingBar.builder(
                          initialRating: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Color(0xffF3603F),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/imgs/next.png",
                          color: DColor.primaryText,
                          height: 15,
                          width: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  RoundButton(title: "Add to Basket", onPressed: () {}),
                ],
              ),
            )
            // Text(
            //   "Đăng Nhập",
            //   style: TextStyle(
            //       color: DColor.primaryText,
            //       fontSize: 26,
            //       fontWeight: FontWeight.w600),
            // ),
            // SizedBox(
            //   height: media.width * 0.03,
            // ),
            // Text(
            //   "Nhập email và mật khẩu để đăng nhập",
            //   style: TextStyle(
            //       color: DColor.secondaryText,
            //       fontSize: 16,
            //       fontWeight: FontWeight.w500),
            // ),
            // SizedBox(
            //   height: media.width * 0.1,
            // ),
          ],
        ),
      ),
    );
  }
}
