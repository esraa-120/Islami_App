import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_routes/app_routes_name.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/model/onboarding_data_model.dart';
import 'package:islamic_app/modules/onboarding/widgets/on_boarding_button.dart';
import 'package:islamic_app/modules/onboarding/widgets/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const String routeName = '/onboarding';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController(initialPage: 0);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: size.width * 0.7,
              child: Assets.images.header.image(fit: BoxFit.contain),
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,

                itemCount: OnboardingDataModel.onboardingList.length,

                itemBuilder: (context, index) {
                  return OnboardingPage(
                    onboardingDataModel:
                        OnboardingDataModel.onboardingList[index],
                  );
                },
              ),
            ),

            OnBoardingButton(
              currentIndex: currentPage,

              onBack: () async {
                if (currentPage == 0) {
                  return;
                }
                currentPage--;

                pageController.jumpToPage(currentPage);

                setState(() {});
              },

              onNext: () async {
                if (currentPage <
                    OnboardingDataModel.onboardingList.length - 1) {
                  currentPage++;

                  pageController.jumpToPage(currentPage);

                  setState(() {});
                } else {
                  Navigator.pushReplacementNamed(context, AppRoutesName.layout);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
