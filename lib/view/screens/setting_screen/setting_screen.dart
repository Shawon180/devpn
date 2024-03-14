import 'package:devpn/utill/color_resources.dart';
import 'package:devpn/utill/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,

        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },

          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 6, bottom: 6),
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
                          "User settings",
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
        padding: EdgeInsets.only(top: AppBar().preferredSize.height + MediaQuery.of(context).padding.top),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/dashboard.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/image/profile.png",
                    width: 98,
                    height: 98,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
          
                Text("PROFILE",style: gillSansBold.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: kTitleColor),),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Username',style: gillSansMedium.copyWith(color: kSubSubTitleColor,fontWeight: FontWeight.w700),),
                      Text("Jane Doe",style: gillSansBold.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: kTitleColor),),
          
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(  color: const Color(0xff230f30),borderRadius: BorderRadius.circular(8), border: Border.all(color: kBorderColorTextField)),
                  child: ListTile(
                    title: Text(
                      "Password",
                      style: gillSansMedium.copyWith(color: kSubSubTitleColor, fontSize: 12,),
                    ),
                    subtitle: Text(
                      "Change Password",
                      style: gillSansBold.copyWith(color: kTitleColor, fontSize: 20),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: kTitleColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text("SETTING",style: gillSansBold.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: kTitleColor),),
          const SizedBox(height: 10,),
                Container(
                  decoration:  BoxDecoration(
                    color: const Color(0xff230f30),
                   borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: kBorderColorTextField,width: 1),
          
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Auto Connect",style: gillSansMedium.copyWith(color: kSubSubTitleColor,fontSize: 20),),
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
                        const Divider(thickness: 1,color: kBorderColorTextField,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text("FAQ",style: gillSansMedium.copyWith(color: kSubSubTitleColor,fontSize: 20),),
                        ),
                        const Divider(thickness: 1,color: kBorderColorTextField,),
          
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text("About",style: gillSansMedium.copyWith(color: kSubSubTitleColor,fontSize: 20),),
                        ),
                        const Divider(thickness: 1,color: kBorderColorTextField,),
          
          
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text("Privacy Policy",style: gillSansMedium.copyWith(color: kSubSubTitleColor,fontSize: 20),),
                        ),
                        const Divider(thickness: 1,color: kBorderColorTextField,),
          
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text("Terms and conditions",style: gillSansMedium.copyWith(color: kSubSubTitleColor,fontSize: 20),),
                        ),
                        
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
