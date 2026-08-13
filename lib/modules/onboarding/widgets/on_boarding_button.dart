import 'package:flutter/material.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/model/onboarding_data_model.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
    required this.currentIndex,
    required this.onBack,
    required this.onNext,
  });

  final int currentIndex;
  final VoidCallback onBack;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      child: Row(
        children: [
          InkWell(
            onTap: currentIndex == 0 ? null : onBack,
            child: const Text(
              'Back',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          const Spacer(),

          Row(
            children: List.generate(OnboardingDataModel.onboardingList.length, (
              index,
            ) {
              final bool isSelected = index == currentIndex;

              return AnimatedContainer(
                duration: const Duration(seconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: isSelected ? 18 : 7,
                height: 7,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
          ),

          const Spacer(),

          InkWell(
            onTap: onNext,
            child: Text(
              currentIndex == OnboardingDataModel.onboardingList.length - 1
                  ? 'Start'
                  : 'Next',
              style: const TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
