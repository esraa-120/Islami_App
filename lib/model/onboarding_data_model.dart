import 'package:flutter/cupertino.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';

class OnboardingDataModel {
  final String title;
  final String? description;
  final Widget imagePath;

  OnboardingDataModel({
    required this.title,
    this.description,
    required this.imagePath,
  });

  static List<OnboardingDataModel> onboardingList = [
    OnboardingDataModel(
      title: "Welcome To Islmi App",
      imagePath: Assets.images.onboarding1Img.image(fit: BoxFit.contain),
    ),
    OnboardingDataModel(
      title: "Welcome To Islami",
      description: "We Are Very Excited To Have You In Our Community",
      imagePath: Assets.images.onboarding2Img.image(fit: BoxFit.contain),
    ),
    OnboardingDataModel(
      title: "Reading the Quran",
      description: "Read, and your Lord is the Most Generous",
      imagePath: Assets.images.onboarding3Img.image(fit: BoxFit.contain),
    ),
    OnboardingDataModel(
      title: "Bearish",
      description: "Praise the name of your Lord, the Most High",
      imagePath: Assets.images.onboarding4Img.image(fit: BoxFit.contain),
    ),
    OnboardingDataModel(
      title: "Holy Quran Radio",
      description:
          "You can listen to the Holy Quran Radio through the application for free and easily",
      imagePath: Assets.images.onboarding5Img.image(fit: BoxFit.contain),
    ),
  ];
}
