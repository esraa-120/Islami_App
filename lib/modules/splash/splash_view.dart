import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_routes/app_routes_name.dart';

import '../../core/gen/assets.gen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ///Flutter lifeCycle
  /// 1-
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        AppRoutesName.layout,
        ((route) => false),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Assets.images.splashImg.image()));
  }
}
