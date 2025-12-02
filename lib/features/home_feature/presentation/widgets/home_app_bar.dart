import 'package:flutter/material.dart';
import 'package:sweet_shop/core/gen/assets.gen.dart';
import 'package:sweet_shop/core/theme/dimens.dart';
import 'package:sweet_shop/core/theme/theme.dart';
import 'package:sweet_shop/core/utils/sized_context.dart';
import 'package:sweet_shop/core/widgets/app_icon_buttons.dart';
import 'package:sweet_shop/core/widgets/app_search_bar.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;

    return Column(
      children: [
        AppBar(
          backgroundColor: colors.primary,
          actions: [AppIconButton(iconPath: Assets.icons.notification)],
          title: Row(
            spacing: Dimens.padding,
            children: [
              AppIconButton(iconPath: Assets.icons.location),
              Column(
                spacing: Dimens.padding,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(fontSize: 16, color: colors.white),
                  ),
                  Text(
                    '123 Main St, Anytown, USA',
                    style: TextStyle(fontSize: 14, color: colors.white),
                  ),
                ],
              ),
            ],
          ),
          leadingWidth: 85,
          titleSpacing: Dimens.padding,
          actionsPadding: EdgeInsets.symmetric(horizontal: Dimens.padding),
        ),
        Stack(
          children: [
            Container(
              height: 50,
              width: context.widthPx,
              decoration: BoxDecoration(
                color: context.theme.appColors.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Dimens.extraLargePadding),
                  bottomRight: Radius.circular(Dimens.extraLargePadding),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 25,
                left: Dimens.largePadding,
                right: Dimens.largePadding,
              ),
              child: AppSearchBar(),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height + 80);
}
