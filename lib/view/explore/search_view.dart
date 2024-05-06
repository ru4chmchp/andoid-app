import 'package:bach_hoa_xanh/common_widget/product_cell.dart';
import 'package:bach_hoa_xanh/view/explore/filter_view.dart';
import 'package:flutter/material.dart';
import 'package:bach_hoa_xanh/common/color_extension.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => ExploreDetaiViewState();
}

class ExploreDetaiViewState extends State<SearchView> {
  TextEditingController txtSearch = TextEditingController();

  List listArr = [
    {
      "name": "Egg Chicken Red",
      "icon": "assets/imgs/egg_chicken_red.png",
      "qty": "4",
      "unit": "pcs, price",
      "price": "\$1.99"
    },
    {
      "name": "Egg Chicken White",
      "icon": "assets/imgs/egg_chicken_white.png",
      "qty": "2",
      "unit": "pcs, price",
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
      "name": "Egg Paste",
      "icon": "assets/imgs/egg_pasta.png",
      "qty": "1",
      "unit": "kg, price",
      "price": "\$3.49"
    },
    {
      "name": "Egg Noodles",
      "icon": "assets/imgs/egg_noodles.png",
      "qty": "1",
      "unit": "kg, price",
      "price": "\$6.49"
    },
    {
      "name": "Mayonnais Eggless",
      "icon": "assets/imgs/mayinnars_eggless.png",
      "qty": "325",
      "unit": "ml, price",
      "price": "\$2.99"
    },
    {
      "name": "Egg Noodles",
      "icon": "assets/imgs/egg_noodies_new.png",
      "qty": "2",
      "unit": "kg, price",
      "price": "\$9.49"
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
        title: Container(
          height: 52,
          decoration: BoxDecoration(
              color: const Color(0xffF2F3F2),
              borderRadius: BorderRadius.circular(15)),
          alignment: Alignment.center,
          child: TextField(
            controller: txtSearch,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Image.asset(
                  "assets/imgs/search.png",
                  width: 20,
                  height: 20,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  txtSearch.text = "";
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() {});
                },
                icon: Image.asset(
                  "assets/imgs/t_close.png",
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
