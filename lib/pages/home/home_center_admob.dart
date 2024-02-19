// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomeCenterAdmob extends StatelessWidget {
  HomeCenterAdmob({super.key, required this.widget});
  Widget? widget;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: widget!,
    );
  }
}
