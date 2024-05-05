import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dropdown extends StatelessWidget {
  final String title;
  final String placeholder;
  final List valueList;
  final Function(Object?) didChange;
  const Dropdown(
      {super.key,
      required this.title,
      required this.placeholder,
      required this.valueList,
      required this.didChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
              color: DColor.textTittle,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 55,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              onChanged: didChange,
              icon: Icon(Icons.expand_more, color: DColor.textTittle),
              hint: Text(
                placeholder,
                style: TextStyle(
                    color: DColor.placeholder,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              isExpanded: true,
              items: valueList.map((obj) {
                return DropdownMenuItem(
                  value: obj,
                  child: Text(
                    obj.toString(),
                    style: TextStyle(
                        color: DColor.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 1,
          color: const Color(0xffE2E2E2),
        )
      ],
    );
  }
}
