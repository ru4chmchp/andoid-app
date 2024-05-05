// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/common_widget/line_textfield.dart';
import 'package:bach_hoa_xanh/common_widget/round_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _LoginViewState();
}

class _LoginViewState extends State<SignUpView> {
  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool isShow = true;

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/imgs/color_logo.png", width: 40),
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.15,
                    ),
                    Text(
                      "Đăng Ký",
                      style: TextStyle(
                          color: DColor.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    Text(
                      "Nhập đầy đủ để tiếp tục",
                      style: TextStyle(
                          color: DColor.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    LineTextField(
                      controller: txtUserName,
                      title: "User",
                      placeholder: "Nhập vào tên đăng nhập",
                    ),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    LineTextField(
                      controller: txtEmail,
                      title: "Email",
                      placeholder: "Nhập vào email của bạn",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    LineTextField(
                      controller: txtPassword,
                      title: "Password",
                      placeholder: "Nhập vào mật khẩu của bạn",
                      obscureText: isShow,
                      right: IconButton(
                          onPressed: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          icon: Icon(
                            isShow ? Icons.visibility_off : Icons.visibility,
                            color: DColor.textTittle,
                          )),
                    ),
                    SizedBox(
                      height: media.width * 0.02,
                    ),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: DColor.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                          TextSpan(
                              text: "Để tiếp tục, bạn phải đồng ý với các"),
                          TextSpan(
                            text: " Dịch vụ",
                            style: TextStyle(
                              color: DColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                log("Bấm vào dịch vụ");
                              },
                          ),
                          TextSpan(text: " và "),
                          TextSpan(
                              text: "Điều khoảng",
                              style: TextStyle(
                                color: DColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  log("Bấm vào điều khoảng");
                                }),
                          TextSpan(
                            text: " của chúng tôi!",
                          )
                        ])),
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    RoundButton(
                        title: "Đăng Ký",
                        onPressed: () {
                          // Navigator.push(
                          //     // context,
                          //     // MaterialPageRoute(
                          //     //     builder: (context) => const SignInView())
                          //         );
                        }),
                    SizedBox(
                      height: media.width * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Đã có tài khoảng?",
                                style: TextStyle(
                                    color: DColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Đăng Nhập",
                                style: TextStyle(
                                    color: DColor.primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ))
    ]);
  }
}
