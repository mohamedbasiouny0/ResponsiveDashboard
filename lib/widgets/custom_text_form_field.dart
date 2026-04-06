import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    required this.hintText,
  });

  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(title, style: AppStyles.styleMedium16),
        Gap(12),
        TextFormField(
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          cursorColor: const Color(0xff4EB7F2),
          style: const TextStyle(color: Color(0xff064061)),
          decoration: InputDecoration(
            fillColor: const Color(0xffFAFAFA),
            filled: true,
            contentPadding: const .all(20),
            hint: Text(
              hintText,
              style: AppStyles.styleRegular16.copyWith(
                color: Color(0xffAAAAAA),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: .circular(12),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: .circular(12),
              borderSide: BorderSide(color: Color(0xff064061), width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
