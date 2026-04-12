import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/utils/app_styles.dart';

class RangeOptions extends StatefulWidget {
  const RangeOptions({super.key});

  @override
  State<RangeOptions> createState() => _RangeOptionsState();
}

class _RangeOptionsState extends State<RangeOptions> {
  List<DropdownMenuItem<String>> items = [
    DropdownMenuItem<String>(
      value: 'Daily',
      child: Text('Daily', style: AppStyles.styleMedium16),
    ),
    DropdownMenuItem<String>(
      value: 'Weekly',
      child: Text('Week', style: AppStyles.styleMedium16),
    ),
    DropdownMenuItem<String>(
      value: 'Monthly',
      child: Text('Monthly', style: AppStyles.styleMedium16),
    ),
    DropdownMenuItem<String>(
      value: 'Anualy',
      child: Text('Anualy', style: AppStyles.styleMedium16),
    ),
  ];

  String? selectedValue = 'Monthly';
  void dropDownCallBack(String? dropDownItem) {
    selectedValue = dropDownItem;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 12),
      width: 142,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffF1F1F1)),
        borderRadius: .circular(12),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: const SizedBox.shrink(),
        items: items,
        onChanged: dropDownCallBack,
        value: selectedValue,
        dropdownColor: Colors.white,
        padding: .zero,
        icon: SvgPicture.asset(Assets.imagesArrowDown),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

// Row(
//         children: [
//           Text('Monthly', style: AppStyles.styleMedium16),
//           const Gap(18),
//           SvgPicture.asset(Assets.imagesArrowDown),
//         ],
//       ),
