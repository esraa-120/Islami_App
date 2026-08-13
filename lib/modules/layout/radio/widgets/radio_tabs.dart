import 'package:flutter/material.dart';
import 'package:islamic_app/core/theme/app_colors.dart';
import 'package:islamic_app/modules/layout/radio/widgets/tab_item.dart';

class RadioTabs extends StatelessWidget {
  const RadioTabs({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.dark,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          TabItem(
            title: 'Radio',
            isSelected: selectedIndex == 0,
            onTap: () => onTabChanged(0),
          ),

          TabItem(
            title: 'Reciters',
            isSelected: selectedIndex == 1,
            onTap: () => onTabChanged(1),
          ),
        ],
      ),
    );
  }
}
