import 'package:bach_hoa_xanh/common_widget/category_cell.dart';
import 'package:bach_hoa_xanh/common_widget/product_cell.dart';
import 'package:bach_hoa_xanh/common_widget/section_view.dart';
import 'package:bach_hoa_xanh/view/home/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:bach_hoa_xanh/common/color_extension.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();
  bool isShow = true;
  List exclusiveOfferArr = [
    {
      "name": "Organic Bananas",
      "icon": "assets/imgs/banana.png",
      "qty": "7",
      "unit": "pcs, Prices",
      "price": "\$1.99"
    },
    {
      "name": "Red Apple",
      "icon": "assets/imgs/apple.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$4.99"
    }
  ];
  List bestsellingArr = [
    {
      "name": "Bell Pepper Red",
      "icon": "assets/imgs/bell_pepper_red.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$2.99"
    },
    {
      "name": "Ginger",
      "icon": "assets/imgs/ginger.png",
      "qty": "250",
      "unit": "gm, Prices",
      "price": "\$3.99"
    },
  ];
  List groceriesApp = [
    {
      "name": "Pulses",
      "icon": "assets/imgs/pulses.png",
      "color": Color(0xffF8A44C),
    },
    {
      "name": "Rice",
      "icon": "assets/imgs/rice.png",
      "color": Color(0xff538175),
    }
  ];
  List listArr = [
    {
      "name": "Beef Bone",
      "icon": "assets/imgs/beef_bone.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$4.99"
    },
    {
      "name": "Broilei Chicken",
      "icon": "assets/imgs/broiler_chicken.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$3.99"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(children: [
      Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/imgs/color_logo.png", width: 25),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/imgs/location.png",
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Đà Nẵng, Việt Nam",
                          style: TextStyle(
                              color: DColor.darkGray,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 52,
                        decoration: BoxDecoration(
                            color: const Color(0xffF2F3F2),
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: TextField(
                          controller: txtSearch,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 16),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                "assets/imgs/search.png",
                                width: 20,
                                height: 20,
                              ),
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Search Store",
                            hintStyle: TextStyle(
                                color: DColor.secondaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                          width: double.maxFinite,
                          height: 115,
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F3F2),
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/imgs/banner_top.png",
                            fit: BoxFit.cover,
                          )),
                    ),
                    SectionView(
                        title: "Exclusive Offer",
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        onPress: () {}),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          itemCount: exclusiveOfferArr.length,
                          itemBuilder: (context, index) {
                            var pObj = exclusiveOfferArr[index] as Map? ?? {};
                            return ProductCell(
                              pObj: pObj,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductDetails()));
                              },
                              onCart: () {},
                            );
                          }),
                    ),
                    SectionView(
                        title: "Best Setting",
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        onPress: () {}),
                    SizedBox(
                      height: 230,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          itemCount: bestsellingArr.length,
                          itemBuilder: (context, index) {
                            var pObj = bestsellingArr[index] as Map? ?? {};
                            return ProductCell(
                              pObj: pObj,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductDetails()));
                              },
                              onCart: () {},
                            );
                          }),
                    ),
                    SectionView(
                        title: "Groceires",
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        onPress: () {}),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          itemCount: groceriesApp.length,
                          itemBuilder: (context, index) {
                            var pObj = groceriesApp[index] as Map? ?? {};
                            return CategoryCell(
                              pObj: pObj,
                              onPressed: () {},
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 240,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          itemCount: listArr.length,
                          itemBuilder: (context, index) {
                            var pObj = listArr[index] as Map? ?? {};
                            return ProductCell(
                              pObj: pObj,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductDetails()));
                              },
                              onCart: () {},
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ))
    ]);
  }
}
