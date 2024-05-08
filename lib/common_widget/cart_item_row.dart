import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartItemRow extends StatelessWidget {
  final Map pObj;
  const CartItemRow({
    super.key,
    required this.pObj,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        height: 120,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  pObj["icon"],
                  width: 80,
                  height: 65,
                  fit: BoxFit.contain,
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
                            Expanded(
                              child: Text(
                                pObj["name"],
                                style: TextStyle(
                                    color: DColor.darkGray,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/imgs/close.png",
                                width: 15,
                                height: 15,
                                color: DColor.secondaryText,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "${pObj["unit"]}",
                          style: TextStyle(
                              color: DColor.darkGray,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF2F3F2),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color:
                                            DColor.placeholder.withOpacity(0.5),
                                        width: 1)),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/imgs/subtack.png",
                                  width: 15,
                                  height: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              pObj["qty"].toString(),
                              style: TextStyle(
                                  color: DColor.darkGray,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF2F3F2),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color:
                                            DColor.placeholder.withOpacity(0.5),
                                        width: 1)),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/imgs/add_green.png",
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "\$${pObj["price"]}",
                              style: TextStyle(
                                  color: DColor.darkGray,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
