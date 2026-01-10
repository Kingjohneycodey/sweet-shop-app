import 'package:flutter/material.dart';
import 'package:sweet_shop/core/theme/dimens.dart';
import 'package:sweet_shop/core/utils/app_navigator.dart';
import 'package:sweet_shop/core/widgets/app_title_widget.dart';
import 'package:sweet_shop/features/home_feature/presentation/screens/special_offers.dart';
import 'package:sweet_shop/features/home_feature/presentation/widgets/banner_slider_widget.dart';
import 'package:sweet_shop/features/home_feature/presentation/widgets/categories_list.dart';
import 'package:sweet_shop/features/home_feature/presentation/widgets/products_list.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppTitleWidget(
            title: 'Special Offers',
            onPressed: () {
              appPush(context, SpecialOffers());
            },
          ),
          BannerSliderWidget(),
          AppTitleWidget(title: 'Categories', onPressed: () {}),
          CategoriesList(),
          ProductsList(),
          SizedBox(height: Dimens.largePadding),
        ],
      ),
    );
  }
}
