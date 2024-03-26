import 'package:flutter/material.dart';
import 'package:news_app/mobel/onboarding_model/onboarding_model.dart';
import 'package:news_app/presentation/screens/auth_screens/login_screen/login_screen.dart';
import 'package:news_app/resources/theme/elevated_button_style.dart';
import 'package:news_app/resources/theme/text_styles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int page = 0;
  List<OnboardingModel> pagesData = [
    const OnboardingModel(
        title: "Explore thousands of latest news",
        desc:
            "Mauris urna velit, congue et aliquam non, imperdiet id massa. Etiam commodo interdum eros, eget hendrerit ex rhoncus in.",
        image: "resources/images/Illustration.png"),
    const OnboardingModel(
        title: "Find news with better filters.",
        desc:
            "In sed massa sit amet nulla fringilla ultrices. Quisque vehicula gravida diam nec sodales. Donec pretium sem a justo egestas tincidunt.",
        image: "resources/images/Illustration-2.png"),
    const OnboardingModel(
        title: "Bookmark, share & comments on news",
        desc:
            "Quisque vitae finibus metus. Sed non placerat neque. Phasellus erat ante, auctor vel scelerisque vitae, facilisis sed nisi.",
        image: "resources/images/Illustration-3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    bool isLast = page == pagesData.length - 1;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(),
                    Image.asset(pagesData[page].image),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          pagesData[page].title,
                          style: onboardingTitle,
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            pagesData[page].desc,
                            style: onboardingDescription,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: onboardingElevatedWhiteButtonStyle,
                        child: Text(isLast ? 'Register now' : 'SKIP'),
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: nextButtonAction,
                        label: const Icon(Icons.arrow_forward),
                        style: onboardingElevatedBlueButtonStyle,
                        icon: Text(isLast ? 'Login' : 'NEXT'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  skipButtonAction(){
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const LoginScreen()));
  }
  nextButtonAction() {
    if (page < pagesData.length - 1) {
      setState(() {
        page++;
      });
    } else {
      skipButtonAction();
    }
  }
}
