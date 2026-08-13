import 'package:flutter/material.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/model/onboarding_data_model.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.onboardingDataModel});

  final OnboardingDataModel onboardingDataModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),

          SizedBox(
            width: size.width,
            height: size.height * 0.42,
            child: onboardingDataModel.imagePath,
          ),

          const SizedBox(height: 24),

          Text(
            onboardingDataModel.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 24),

          if (onboardingDataModel.description != null)
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 30.0,
                vertical: 10,
              ),
              child: Text(
                onboardingDataModel.description ?? '',
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColors.primary, fontSize: 16),
              ),
            ),
        ],
      ),
    );
  }
}
