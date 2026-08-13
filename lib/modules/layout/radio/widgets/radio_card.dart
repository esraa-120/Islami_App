import 'package:flutter/material.dart';
import 'package:islamic_app/core/theme/app_colors.dart';

class RadioCard extends StatelessWidget {
  final String title;
  final Widget background;
  final Widget playIcon;
  final Widget volumeIcon;

  const RadioCard({
    super.key,
    required this.title,
    required this.background,
    required this.playIcon,
    required this.volumeIcon,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.145,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned.fill(child: background),

          // Content
          Column(
            children: [
              SizedBox(height: size.height * 0.018),

              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.dark,
                    fontSize: size.width * 0.045,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              const Spacer(),

              // Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  playIcon,

                  SizedBox(width: size.width * 0.035),

                  volumeIcon,
                ],
              ),

              SizedBox(height: size.height * 0.018),
            ],
          ),
        ],
      ),
    );
  }
}
