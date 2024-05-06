import 'package:bach_hoa_xanh/common_widget/product_cell.dart';
import 'package:bach_hoa_xanh/view/explore/filter_view.dart';
import 'package:flutter/material.dart';
import 'package:bach_hoa_xanh/common/color_extension.dart';

class ExploreDetaiView extends StatefulWidget {
  final Map eObj;
  const ExploreDetaiView({super.key, required this.eObj});

  @override
  State<ExploreDetaiView> createState() => ExploreDetaiViewState();
}

class ExploreDetaiViewState extends State<ExploreDetaiView> {
  List listArr = [
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/imgs/back.png",
            height: 20,
            width: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FilterView()));
            },
            icon: Image.asset(
              "assets/imgs/filter_ic.png",
              height: 20,
              width: 20,
            ),
          ),
        ],
        centerTitle: true,
        title: Text(widget.eObj["name"].toString(),
            style: TextStyle(
                color: DColor.primaryText,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: listArr.length,
          itemBuilder: (context, index) {
            var pObj = listArr[index] as Map? ?? {};
            return ProductCell(
              pObj: pObj,
              margin: 0,
              weight: double.maxFinite,
              onPressed: () {},
              onCart: () {},
            );
          }),
    );
  }
}
