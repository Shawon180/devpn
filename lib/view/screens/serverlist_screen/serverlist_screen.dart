import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:devpn/utill/color_resources.dart';
import 'package:devpn/utill/style.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ServerListScreen extends StatefulWidget {
  const ServerListScreen({super.key});

  @override
  State<ServerListScreen> createState() => _ServerListScreenState();
}

class _ServerListScreenState extends State<ServerListScreen> {
  List<bool> switchValues = List.generate(7, (index) => false); // Initialize with all switches off
  List<String> baseFlagsCode = [
    'it',
    'fr',
    'es',
    'br',
    'ca',
    'bd',
    'ar',
  ];
  List<String> countryList = [
    'Italy',
    'France',
    'Spain',
    'Brazil',
    'Canada',
    'Bangladesh',
    'Argentina',
  ];
  String selectedCountry = "Italy";
  TextEditingController searchController = TextEditingController();
  bool initialSwitchStateSet = false;

  @override
  Widget build(BuildContext context) {
    if (!initialSwitchStateSet) {
      // Set initial switch state only once
      switchValues[countryList.indexOf('Italy')] = true;
      initialSwitchStateSet = true;
    }
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
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
                          "SERVER LIST",
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
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/Loading_screen.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SELECT YOUR COUNTRY",
                  style: gillSansBold.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: kTitleColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff230f30),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: kBorderColorTextField, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: searchController,
                          decoration: kInputDecoration.copyWith(
                            hintText: "Search your country",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            prefixIcon: const Icon(BootstrapIcons.search),
                          ),
                          keyboardType: TextInputType.text,
                          style: const TextStyle(color: kTitleColor),
                        ),
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: countryList.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (_, index) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: index == countryList.length - 1 ? Colors.transparent : Colors.grey,
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                onTap: () {
                                  setState(() {
                                    selectedCountry = countryList[index];
                                    switchValues = List.generate(countryList.length, (i) => i == index);
                                  });
                                },
                                leading: Flag.fromString(
                                  baseFlagsCode[index],
                                  borderRadius: 20,
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  countryList[index],
                                  style: gillSansBold.copyWith(color: switchValues[index] ? Colors.white : Colors.grey),
                                ),
                                subtitle: FittedBox(
                                  child: Row(
                                    children: [
                                      Text("3 Locations", style: gillSansMedium.copyWith(color: kSubSubTitleColor, fontSize: 12)),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 4.0, right: 6, left: 10),
                                        child: Icon(Icons.signal_cellular_alt_rounded, color: Colors.green, size: 14),
                                      ),
                                      Text("127ms - 200ms", style: gillSansMedium.copyWith(color: kSubSubTitleColor, fontSize: 12)),
                                    ],
                                  ),
                                ),
                                trailing: Padding(
                                  padding: const EdgeInsets.only(bottom: 3.0),
                                  child: Transform.scale(
                                    scale: 0.65,
                                    child: CupertinoSwitch(
                                      value: switchValues[index],
                                      activeColor: CupertinoColors.activeGreen,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          switchValues = List.generate(countryList.length, (i) => i == index ? value ?? false : false);
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )


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
