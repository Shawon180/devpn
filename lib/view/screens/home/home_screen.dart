import 'package:devpn/utill/color_resources.dart';
import 'package:devpn/utill/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 6, bottom: 6),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },

            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: kTitleColor.withOpacity(0.3)),
              child: const Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: kSubSubTitleColor,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0, right: 10),
            child: Row(
              children: [
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connection",
                          style: gillSansBold.copyWith(color: kSubTitleColor, fontWeight: FontWeight.bold, fontSize: 16, fontFamily: "Gill Sans"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "192.158.1.38.",
                              style: gillSansMedium.copyWith(color: kSubTitleColor, fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                            Image.asset(
                              "assets/icon/green_dot.png",
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: kTitleColor.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icon/profile_setting.png',
                      fit: BoxFit.contain,
                      height: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: AppBar().preferredSize.height + MediaQuery.of(context).padding.top),
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/dashboard.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon/shield-check.png",
                width: 63,
                height: 63,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "YOU'RE PROTECTED",
                style: gillSansBold.copyWith(color: kTitleColor, fontSize: 22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Always-On VPN",
                    style: gillSansBold.copyWith(
                      color: kSubSubTitleColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3.0),
                    child: Transform.scale(
                      scale: 0.65,
                      child: CupertinoSwitch(
                        // This bool value toggles the switch.
                        value: switchValue,

                        activeColor: CupertinoColors.activeGreen,
                        onChanged: (bool? value) {
                          // This is called when the user toggles the switch.
                          setState(() {
                            switchValue = value ?? false;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/image/centerpiece_on.png",
                width: 330,
                height: 280,
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: kBorderColorTextField)),
                child: ListTile(
                  leading: const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Flag.fromString(
                      borderRadius: 20,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                      "it",
                    ),
                  ),
                  title: Text(
                    "Auto Location",
                    style: gillSansMedium.copyWith(color: kSubSubTitleColor, fontSize: 10),
                  ),
                  subtitle: Text(
                    "Italy",
                    style: gillSansBold.copyWith(color: kTitleColor, fontSize: 20),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: kTitleColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
