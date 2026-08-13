import 'package:flutter/material.dart';
import 'package:islamic_app/core/gen/assets.gen.dart';
import 'package:islamic_app/modules/header.dart';
import 'package:islamic_app/modules/layout/radio/widgets/radio_list.dart';
import 'package:islamic_app/modules/layout/radio/widgets/radio_tabs.dart';
import 'package:islamic_app/modules/layout/radio/widgets/reciters_list.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.radioBg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const RadioHeader(),

          const SizedBox(height: 7),

          RadioTabs(
            selectedIndex: selectedIndex,
            onTabChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),

          const SizedBox(height: 16),

          Expanded(
            child: selectedIndex == 0
                ? const RadioList()
                : const RecitersList(),
          ),
        ],
      ),
    );
  }
}