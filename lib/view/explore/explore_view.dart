import 'package:bach_hoa_xanh/common_widget/explore_cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bach_hoa_xanh/common/color_extension.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => ExploreViewState();
}

class ExploreViewState extends State<ExploreView> {
  TextEditingController txtSearch = TextEditingController();
  bool isShow = true;

  List findProductView = [
    {
      "name": "Frash Fruits & Vegatable",
      "icon": "assets/imgs/frash_fruits.png",
      "color": Color(0xff538175),
    },
    {
      "name": "Cooking Oil & Ghee",
      "icon": "assets/imgs/cooking_oil.png",
      "color": Color(0xffF8A44C),
    },
    {
      "name": "Meat & Fish",
      "icon": "assets/imgs/meat_fish.png",
      "color": Color(0xffF7A593),
    },
    {
      "name": "Bakery & Snacks",
      "icon": "assets/imgs/bakery_snacks.png",
      "color": Color(0xffD3B0E0),
    },
    {
      "name": "Dairy & Eggs",
      "icon": "assets/imgs/dairy_eggs.png",
      "color": Color(0xFFFDE598),
    },
    {
      "name": "Beverages",
      "icon": "assets/imgs/beverages.png",
      "color": Color(0xffB7DFF5),
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Find Products",
            style: TextStyle(
                color: DColor.primaryText,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: const Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.asset(
                      "assets/imgs/search.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Text(
                    "Search Store",
                    style: TextStyle(
                        color: DColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.95,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: findProductView.length,
                itemBuilder: (context, index) {
                  var pObj = findProductView[index] as Map? ?? {};
                  return ExploreCell(
                    pObj: pObj,
                    onPressed: () {},
                  );
                }),
          ),
        ],
      ),
    );
  }
}
