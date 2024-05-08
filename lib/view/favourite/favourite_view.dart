import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/favourite_row.dart';
import 'package:bach_hoa_xanh/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  List cartArr = [
    {
      "name": "Diet Coke",
      "icon": "assets/imgs/diet_coke.png",
      "qty": "355",
      "unit": "ml, price",
      "price": "\$1.99"
    },
    {
      "name": "Sprite Can",
      "icon": "assets/imgs/sprite_can.png",
      "qty": "325",
      "unit": "ml, price",
      "price": "\$1.49"
    },
    {
      "name": "Apple & Grape Juice",
      "icon": "assets/imgs/juice_apple_grape.png",
      "qty": "2",
      "unit": "L, price",
      "price": "\$15.99"
    },
    {
      "name": "Orange Juice",
      "icon": "assets/imgs/orenge_juice.png",
      "qty": "2",
      "unit": "L, price",
      "price": "\$15.49"
    },
    {
      "name": "Coca Cola Can",
      "icon": "assets/imgs/cocacola_can.png",
      "qty": "325",
      "unit": "ml, price",
      "price": "\$4.99"
    },
    {
      "name": "Pepsi Can",
      "icon": "assets/imgs/pepsi_can.png",
      "qty": "325",
      "unit": "ml, price",
      "price": "\$4.49"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: Text("Favourites",
            style: TextStyle(
                color: DColor.primaryText,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.separated(
              padding: const EdgeInsets.all(20.0),
              separatorBuilder: (context, index) => const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
              itemCount: cartArr.length,
              itemBuilder: (context, index) {
                var pObj = cartArr[index] as Map? ?? {};
                return FavouriteRow(
                  pObj: pObj,
                  onPressed: () {},
                );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundButton(title: "Add all to cart", onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
