import 'package:flutter/cupertino.dart';
import 'package:islamic_app/core/app_routes/app_routes_name.dart';
import 'package:islamic_app/modules/layout/quran/quran_details_view.dart';
import 'package:islamic_app/modules/splash/splash_view.dart';

import '../../modules/layout/layout_view.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutesName.initial: (context) => const SplashView(),
    AppRoutesName.layout: (context) => const LayoutView(),
    AppRoutesName.quranDetails: (context) => const QuranDetailsView(),
  };
}
