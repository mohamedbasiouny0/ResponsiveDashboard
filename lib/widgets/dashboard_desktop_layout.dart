import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test1/widgets/mid_section.dart';
import 'package:test1/widgets/custom_drawer.dart';
import 'package:test1/widgets/right_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.widthOf(context).toString());
    return const Row(
      children: [
        CustomDrawer(),

        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 3, child: MidSection()),
                    Expanded(flex: 2, child: RightSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
