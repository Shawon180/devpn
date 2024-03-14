import 'package:devpn/view/screens/log_screen/log_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> nextPage()async {
   await Future.delayed(const Duration(seconds: 3)).then(
          (value) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LogScreen()),
      ),
    );
  }
  @override
  void initState() {
  nextPage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/Loading_screen.png"),
              fit: BoxFit.cover
            )
          ),
          child: Center(child: Image.asset("assets/icon/app_icon.png",width: 272,height: 211,fit: BoxFit.cover,)),
        ) ,
      ),
    );
  }
}
