import 'package:flutter/material.dart';
import 'package:sweet_shop/core/theme/dimens.dart';
import 'package:sweet_shop/core/widgets/app_scaffold.dart';
import 'package:sweet_shop/core/widgets/general_app_bar.dart';
import 'package:sweet_shop/features/home_feature/data/data_source/local/sample_data.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: GeneralAppBar(title: 'Categories'),
      body: ListView.separated(
        itemCount: titlesOfCategories.length,
        itemBuilder: (final context, final index) {
          return Column();
        },
        separatorBuilder: (final context, final index) {
          return SizedBox(height: Dimens.largePadding);
        },
      ),
    );
  }
}
