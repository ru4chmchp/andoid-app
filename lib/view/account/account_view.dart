import 'package:bach_hoa_xanh/common/color_extension.dart';
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
            )
          ],
        )),
      ),
    );
  }
}
