import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:test1/models/income_item_model.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesIncomeCircle),
        const Gap(40),
        const Expanded(child: IncomeItemsListView()),
      ],
    );
  }
}

class IncomeItemsListView extends StatelessWidget {
  const IncomeItemsListView({super.key});

  static const List<IncomeItemModel> modelList = [
    IncomeItemModel(
      circleColor: Color(0xff208CC8),
      text: 'Design service',
      percentage: '40',
    ),
    IncomeItemModel(
      circleColor: Color(0xff4EB7F2),
      text: 'Design product',
      percentage: '25',
    ),
    IncomeItemModel(
      circleColor: Color(0xff064061),
      text: 'Product royalti',
      percentage: '20',
    ),
    IncomeItemModel(
      circleColor: Color(0xffE2DECD),
      text: 'Other',
      percentage: '22',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: modelList.map((e) => IncomeDetailsItem(model: e)).toList(),
    );
  }
}
