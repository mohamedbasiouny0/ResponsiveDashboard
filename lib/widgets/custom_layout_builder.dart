import 'package:flutter/material.dart';

class CustomLayoutBuilder extends StatelessWidget {
  const CustomLayoutBuilder({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 850) {
          return mobileLayout(context);
        } else if (constrains.maxWidth < 1400) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
