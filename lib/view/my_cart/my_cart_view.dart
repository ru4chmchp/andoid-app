import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/cart_item_row.dart';
import 'package:bach_hoa_xanh/view/my_cart/checkout_view.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  List cartArr = [
    {
      "name": "Bell Pepper Red",
      "icon": "assets/imgs/bell_pepper_red.png",
      "qty": "1",
      "unit": "1kg, price",
      "price": 2.99
    },
    {
      "name": "Egg Chicken Red",
      "icon": "assets/imgs/egg_chicken_red.png",
      "qty": "1",
      "unit": "4pcs, price",
      "price": 1.99
    },
    {
      "name": "Organic Bananas",
      "icon": "assets/imgs/banana.png",
      "qty": "1",
      "unit": "7pcs, price",
      "price": 1.99
    },
    {
      "name": "Ginger",
      "icon": "assets/imgs/ginger.png",
      "qty": "1",
      "unit": "250mg, price",
      "price": 3.99
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: Text("My Cart",
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
                return CartItemRow(
                  pObj: pObj,
                );
              }),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () {
                    showCheck();
                  },
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19)),
                  minWidth: double.maxFinite,
                  elevation: 0.1,
                  color: DColor.primary,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Go to checkout",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: const Text(
                          "\$10.96",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showCheck() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isDismissible: false,
        context: context,
        builder: (context) {
          return CheckoutView();
        });
  }
}
