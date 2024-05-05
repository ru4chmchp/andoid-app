import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/round_button.dart';
import 'package:bach_hoa_xanh/view/login/verification_view.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtMobile = TextEditingController();
  FlCountryCodePicker countryCodePicker = const FlCountryCodePicker();
  late CountryCode countryCode;
  @override
  void initState() {
    super.initState();
    countryCode = countryCodePicker.countryCodes
        .firstWhere((element) => element.name == "Viet Nam");
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(alignment: Alignment.topCenter, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/imgs/bottom_bg.png",
                width: media.width,
                height: media.height,
                fit: BoxFit.cover,
              )
            ],
          ),
          Image.asset(
            "assets/imgs/sign_in_top.png",
            width: media.width,
          ),
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                SizedBox(
                  height: media.width * 1,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Get your groceries\n with nectar",
                          style: TextStyle(
                              color: Color.fromARGB(255, 46, 43, 43)
                                  .withOpacity(0.7),
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextField(
                        controller: txtMobile,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: GestureDetector(
                            onTap: () async {
                              final code = await countryCodePicker.showPicker(
                                  context: context);
                              if (code != null) {
                                countryCode = code;
                                if (mounted) {
                                  setState(() {});
                                }
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15.0),
                                  width: 35,
                                  height: 35,
                                  child: countryCode.flagImage(),
                                ),
                                Text(
                                  "${countryCode.dialCode}",
                                  style: TextStyle(
                                      color: DColor.primaryText,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 15,
                                )
                              ],
                            ),
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Số điện thoại",
                          hintStyle: TextStyle(
                            color: DColor.placeholder,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 1,
                        color: const Color(0xffE2E2E2),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Or connect with social media",
                  style: TextStyle(
                      color: Color.fromARGB(255, 94, 91, 91).withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundIconButton(
                      title: "Continue with Google",
                      icon: "assets/imgs/google_logo.png",
                      bgColor: Color.fromARGB(255, 179, 185, 199),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const VerificationView()));
                      }),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundIconButton(
                      title: "Continue with Facebook",
                      icon: "assets/imgs/fb_logo.png",
                      bgColor: Color(0xff4A66AC),
                      onPressed: () {}),
                )
              ],
            )),
          )
        ]));
  }
}
