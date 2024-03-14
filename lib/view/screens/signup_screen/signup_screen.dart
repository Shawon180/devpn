
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../utill/color_resources.dart';
import '../../../utill/style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/Loading_screen.png"), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/icon/app_icon2.png",
                    width: 100,
                    height: 112,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome to DEVPN.",
                    style: gillSansBold.copyWith(fontSize: 22, color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Log in or Sign Up. Be Private.",
                    style: gillSansMedium.copyWith(color: kSubSubTitleColor, fontWeight: FontWeight.w700, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                    color: kSubSubTitleColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: kInputDecoration.copyWith(
                      hintText: "Enter your username",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: const Icon(BootstrapIcons.person_circle,color: kTitleColor,),
                      labelText: "Username",
                        labelStyle: gillSansBold.copyWith(color: kSubSubTitleColor)
                      // Set the style property to change input text color
                    ),
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: kTitleColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: obscurePassword,
                    decoration: kInputDecoration.copyWith(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "Enter your password",
                      suffixIcon: GestureDetector(
                        onTap: () {
                      // Toggle the visibility of the password
                      setState(() {
            obscurePassword = !obscurePassword;
            });
          },
            child: Icon(
              obscurePassword ? IconlyBold.hide : IconlyBold.show, // Change icons based on the state
              color: obscurePassword?kSubSubTitleColor:kTitleColor,
            ),
          ),
                      labelText: "Password",
                        labelStyle: gillSansBold.copyWith(color: kSubSubTitleColor)

                      // Set the style property to change input text color
                    ),
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: kTitleColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,

                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: kPrimaryColor),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0,bottom: 10),
                        child: Text(
                          "Agree and continue",
                          style: gillSansBold.copyWith(color: kTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          child: const Divider(
                            color: kSubSubTitleColor,
                            height: 36,
                          )),
                    ),
                    Text(
                      "or login with",
                      style: gillSansMedium.copyWith(color: kSubSubTitleColor, fontWeight: FontWeight.w700),
                    ),
                    Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: const Divider(
                            color: kSubSubTitleColor,
                            height: 36,
                          )),
                    ),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 103,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kSubSubTitleColor, width: 1),
                      color: const Color(0xff110918),
                    ),
                    child: Image.asset(
                      "assets/icon/fox_icon.png",
                      width: 64,
                      height: 64,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15,),

                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(color: kSubSubTitleColor, fontSize: 12),

                      children: <TextSpan>[
                        TextSpan(text: 'By selecting Agree and continue above,\nI agree to ', style: TextStyle(color:kSubSubTitleColor,fontSize: 12,fontWeight: FontWeight.w700)),

                        TextSpan(text: 'Terms of Service and Privacy Policy', style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.w700),
                            //
                            // recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrivacyAndPolicy()))


                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
