import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/account_row.dart';
import 'package:flutter/material.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(
                      "assets/imgs/u1.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Nguyen Huu Dung",
                              style: TextStyle(
                                  color: DColor.primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700)),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.edit,
                            color: DColor.primary,
                            size: 20,
                          ),
                        ],
                      ),
                      Text("dungnh.22ns@gmail.com",
                          style: TextStyle(
                            color: DColor.primaryText,
                            fontSize: 16,
                          )),
                    ],
                  ))
                ],
              ),
            ),
            const Divider(
              color: Colors.black26,
              height: 1,
            ),
            AccountRow(
                title: "Orders",
                icon: "assets/imgs/a_order.png",
                onPressed: () {}),
            AccountRow(
                title: "My Details",
                icon: "assets/imgs/a_my_detail.png",
                onPressed: () {}),
            AccountRow(
                title: "Delivery Address",
                icon: "assets/imgs/a_delivery_address.png",
                onPressed: () {}),
            AccountRow(
                title: "Promo Code",
                icon: "assets/imgs/a_promocode.png",
                onPressed: () {}),
            AccountRow(
                title: "Notifications",
                icon: "assets/imgs/a_noitification.png",
                onPressed: () {}),
            AccountRow(
                title: "Helps",
                icon: "assets/imgs/a_help.png",
                onPressed: () {}),
            AccountRow(
                title: "Abouts",
                icon: "assets/imgs/a_about.png",
                onPressed: () {}),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    height: 60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19)),
                    minWidth: double.maxFinite,
                    elevation: 0.1,
                    color: const Color(0xffF2F3F2),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Log Out",
                              style: TextStyle(
                                  color: DColor.primary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset(
                              "assets/imgs/logout.png",
                              width: 20,
                              height: 20,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
