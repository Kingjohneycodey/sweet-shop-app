import 'package:flutter/material.dart';
import 'package:sweet_shop/core/gen/assets.gen.dart';
import 'package:sweet_shop/core/theme/theme.dart';
import 'package:sweet_shop/core/utils/check_device_size.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.images.splashHeader.image(),
          Assets.images.logo.image(
            width: checkVerySmallDeviceSize(context) ? 290 : 390,
          ),
          Assets.images.cake.image(
            width: checkVerySmallDeviceSize(context) ? 205 : 305,
          ),
        ],
      ),
    );
  }
}
