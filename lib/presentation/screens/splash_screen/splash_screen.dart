import 'package:flutter/material.dart';
import 'package:news_app/localization/app_strings_keys.dart' as strings;
import 'package:news_app/resources/images/images.dart' as images;
import 'package:news_app/resources/theme/text_styles.dart' as styles;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      debugPrint("My future is completed");
      Navigator.pushReplacementNamed(context,  "/main");
      // Navigator.push(context, MaterialPageRoute(builder: (_) {
      //   return const OnboardingScreen();
      // }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(images.AppImages.newspaperFill.path),
              Text(
                strings.papary.localized,
                style: styles.textStyleHeader1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
