import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/filter_row.dart';
import 'package:bach_hoa_xanh/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  List selectArr = [];
  List filterCatArr = [
    {"id": "1", "name": "Egg"},
    {"id": "2", "name": "Noodles & Pasta"},
    {"id": "3", "name": "Chip & Crisps"},
    {"id": "4", "name": "Fast Food"}
  ];
  List filterBrandArr = [
    {"id": "1", "name": "Individual Collection"},
    {"id": "2", "name": "Coca Cola"},
    {"id": "3", "name": "Ifad"},
    {"id": "4", "name": "Kazi Farams"}
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
              "assets/imgs/close.png",
              height: 20,
              width: 20,
            ),
          ),
          centerTitle: true,
          title: Text("Filters",
              style: TextStyle(
                  color: DColor.primaryText,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              color: Color(0xffF2F3F2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text("Categories",
                            style: TextStyle(
                                color: DColor.primaryText,
                                fontSize: 24,
                                fontWeight: FontWeight.w600)),
                      ),
                      Column(
                          children: filterCatArr.map((fObj) {
                        return FilterRow(
                            fObj: fObj,
                            isSelect: selectArr.contains(fObj),
                            onPressed: () {
                              if (selectArr.contains(fObj)) {
                                selectArr.remove(fObj);
                              } else {
                                selectArr.add(fObj);
                              }
                              setState(() {});
                            });
                      }).toList()),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text("Brand",
                            style: TextStyle(
                                color: DColor.primaryText,
                                fontSize: 24,
                                fontWeight: FontWeight.w600)),
                      ),
                      Column(
                          children: filterBrandArr.map((fObj) {
                        return FilterRow(
                            fObj: fObj,
                            isSelect: selectArr.contains(fObj),
                            onPressed: () {
                              if (selectArr.contains(fObj)) {
                                selectArr.remove(fObj);
                              } else {
                                selectArr.add(fObj);
                              }
                              setState(() {});
                            });
                      }).toList()),
                    ]),
              )),
              RoundButton(title: "Apply Filter", onPressed: () {})
            ],
          ),
        ));
  }
}
