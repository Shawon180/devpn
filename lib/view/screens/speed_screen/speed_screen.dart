import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:devpn/utill/color_resources.dart';
import 'package:devpn/utill/style.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SpeedScreen extends StatefulWidget {
  const SpeedScreen({super.key});

  @override
  State<SpeedScreen> createState() => _SpeedScreenState();
}

class _SpeedScreenState extends State<SpeedScreen> {
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
                          "SPEED TEST",
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
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/Loading_screen.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              children: [
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6.0),
                            child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(width: 2, color: kBorderColorTextField)),
                              child: const Flag.fromString(
                                "it",
                                borderRadius: 20,
                                width: 32,
                                height: 32,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Italy",
                            style: gillSansBold.copyWith(fontSize: 20, color: kTitleColor),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4.0, right: 6, left: 10),
                            child: Icon(Icons.signal_cellular_alt_rounded, color: Colors.green, size: 18),
                          ),
                          Text("Ping - 167ms ", style: gillSansMedium.copyWith(color: kSubSubTitleColor, fontSize: 14)),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4.0, right: 6, left: 10),
                            child: Icon(Icons.wifi, color: kPrimaryColor, size: 18),
                          ),
                          Text("Jitter 167 ms", style: gillSansMedium.copyWith(color: kSubSubTitleColor, fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 280,
                  width: double.infinity,
                  child: FittedBox(
                      child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        pointers: const <GaugePointer>[
                          NeedlePointer(
                              value: 60,
                              needleStartWidth: 1,
                              needleEndWidth: 2,
                              needleColor: kTitleColor,
                              tailStyle: TailStyle(color: kTitleColor),
                              knobStyle: KnobStyle(knobRadius: 0.07, borderWidth: 0.05, color: kTitleColor))
                        ],
                        minimum: 0,
                        maximum: 100,
                        interval: 10,
                        ticksPosition: ElementsPosition.outside,
                        labelsPosition: ElementsPosition.inside,
                        minorTicksPerInterval: 5,
                        radiusFactor: 0.9,
                        labelOffset: 15,
                        minorTickStyle: const MinorTickStyle(thickness: 1, color: kSubSubTitleColor, length: 0.10, lengthUnit: GaugeSizeUnit.factor),
                        majorTickStyle: const MinorTickStyle(
                          thickness: 2,
                          color: kTitleColor,
                          length: 0.10,
                          lengthUnit: GaugeSizeUnit.factor,
                        ),
                        axisLineStyle: const AxisLineStyle(thickness: 2, color: kSubSubTitleColor),
                        axisLabelStyle: const GaugeTextStyle(fontSize: 12, color: kTitleColor),
                      ),
                    ],
                  )),
                ),
                Text(
                  "50",
                  style: gillSansBold.copyWith(color: kTitleColor, fontSize: 40),
                ),
                Text(
                  "Latency: m/s",
                  style: gillSansMedium.copyWith(color: kTitleColor, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          BootstrapIcons.arrow_down_circle,
                          color: kPrimaryColor,
                          size: 25,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Download",
                              style: gillSansMedium.copyWith(
                                color: kPrimaryColor,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "30.88",
                                  style: gillSansBold.copyWith(color: kTitleColor, fontSize: 19),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Mbp/s",
                                  style: gillSansMedium.copyWith(
                                    color: kTitleColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 20,
                      width: 1,
                      color: kBorderColorTextField,
                    ),
                    Row(
                      children: [
                        const Icon(
                          BootstrapIcons.arrow_up_circle,
                          color: Colors.green,
                          size: 25,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Upload",
                              style: gillSansMedium.copyWith(
                                color: Colors.green,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "30.88",
                                  style: gillSansBold.copyWith(color: kTitleColor, fontSize: 19),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Mbp/s",
                                  style: gillSansMedium.copyWith(
                                    color: kTitleColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: kPrimaryColor),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 10),
                        child: Text(
                          "STOP",
                          style: gillSansBold.copyWith(color: kTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
