import 'package:flutter/material.dart';
import 'package:sweet_shop/core/gen/assets.gen.dart';
import 'package:sweet_shop/core/theme/theme.dart';
import 'package:sweet_shop/core/widgets/app_scaffold.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;

    return AppScaffold(
      backgroundColor: colors.brownExtraLight,
      padding: EdgeInsets.zero,
      safeAreaTop: false,
      body: Column(children: [Assets.images.splashHeader.image()]),
    );
  }
}
