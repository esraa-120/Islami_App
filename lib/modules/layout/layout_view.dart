import 'package:flutter/material.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/modules/layout/hadith/hadith_view.dart';
import 'package:islamic_app/modules/layout/quran/quran_view.dart';
import 'package:islamic_app/modules/layout/radio/radio_view.dart';
import 'package:islamic_app/modules/layout/tasbih/tasbih_view.dart';
import 'package:islamic_app/modules/layout/time/time_view.dart';

import '../../core/gen/assets.gen.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  final List<Widget> _pages = [
    QuranView(),
    HadithView(),
    TasbihView(),
    RadioView(),
    TimeView(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.dark.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Assets.icons.quranSvg.svg(height: 20),
            ),
            icon: Assets.icons.quranSvg.svg(
              colorFilter: ColorFilter.mode(AppColors.dark, BlendMode.srcIn),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.dark.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Assets.icons.hadethSvg.svg(
                height: 20,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: Assets.icons.hadethSvg.svg(
              colorFilter: ColorFilter.mode(AppColors.dark, BlendMode.srcIn),
            ),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.dark.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Assets.icons.sebhaSvg.svg(
                height: 20,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: Assets.icons.sebhaSvg.svg(
              colorFilter: ColorFilter.mode(AppColors.dark, BlendMode.srcIn),
            ),
            label: "Tasbih",
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.dark.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Assets.icons.radioSvg.svg(
                height: 20,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: Assets.icons.radioSvg.svg(
              colorFilter: ColorFilter.mode(AppColors.dark, BlendMode.srcIn),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.dark.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Assets.icons.timerSvg.svg(
                height: 20,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: Assets.icons.timerSvg.svg(
              colorFilter: ColorFilter.mode(AppColors.dark, BlendMode.srcIn),
            ),
            label: "Time",
          ),
        ],
      ),
    );
  }
}
