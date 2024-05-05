import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/dropdown.dart';
import 'package:bach_hoa_xanh/common_widget/round_button.dart';
import 'package:bach_hoa_xanh/view/login/login_view.dart';
import 'package:flutter/material.dart';

class SelectLocationView extends StatefulWidget {
  const SelectLocationView({super.key});

  @override
  State<SelectLocationView> createState() => _SelectLocationViewState();
}

class _SelectLocationViewState extends State<SelectLocationView> {
  TextEditingController txtOTP = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(children: [
      Container(
        color: Colors.white,
        child: Image.asset("assets/imgs/bottom_bg.png",
            width: media.width, height: media.height, fit: BoxFit.cover),
      ),
      Scaffold(
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
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/imgs/select_location.png",
                        width: media.width * 0.7),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    Text(
                      "Chọn địa điểm của bạn",
                      style: TextStyle(
                          color: DColor.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    Text(
                      "Switch on your location to stay in tune with\nwhat's happening in your area",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: DColor.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Dropdown(
                        title: "Your zone",
                        placeholder: "Select your zone",
                        valueList: const ["zone 1", "zone 2"],
                        didChange: (sObj) {}),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    Dropdown(
                        title: "Your zone",
                        placeholder: "Select your zone",
                        valueList: const ["zone 1", "zone 2"],
                        didChange: (sObj) {}),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    RoundButton(
                        title: "Gửi",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginView()));
                        }),
                  ],
                ),
              ),
            ),
          ))
    ]);
  }
}
