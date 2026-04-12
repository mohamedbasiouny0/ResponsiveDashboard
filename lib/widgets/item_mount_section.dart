import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/utils/app_styles.dart';

class ItemMountSection extends StatefulWidget {
  const ItemMountSection({super.key});

  @override
  State<ItemMountSection> createState() => _ItemMountSectionState();
}

class _ItemMountSectionState extends State<ItemMountSection> {
  late List<DropdownMenuItem<String>> items;
  @override
  void initState() {
    items = [
      const DropdownMenuItem(value: 'EGP', child: Text('EGP')),
      const DropdownMenuItem(value: 'USD', child: Text('USD')),
      const DropdownMenuItem(value: 'REL', child: Text('REL')),
    ];
    super.initState();
  }

  String? selectedValue = 'EGP';

  void dropDownCallBack(String? dropDownItem) {
    selectedValue = dropDownItem;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Item mount', style: AppStyles.styleMedium16),
        const Gap(12),
        Container(
          padding: const .all(20),
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xffFAFAFA),
            borderRadius: .circular(12),
          ),
          child: DropdownButton<String>(
            
            dropdownColor: Colors.white,
            borderRadius: .circular(12),
            underline: const SizedBox.shrink(),
            padding: .zero,
            items: items,
            value: selectedValue,
            onChanged: dropDownCallBack,
            icon: SvgPicture.asset(Assets.imagesArrowDown),
            isExpanded: true,
            style: AppStyles.styleRegular16.copyWith(
              color: const Color(0xffAAAAAA),
            ),
          ),
        ),
      ],
    );
  }
}
