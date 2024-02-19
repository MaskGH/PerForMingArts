import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Size kSize(BuildContext context) => MediaQuery.of(context).size;

TextStyle kBaseFont = GoogleFonts.gothicA1(fontWeight: FontWeight.w700);
TextStyle kBaseAccentFont = GoogleFonts.gothicA1(fontWeight: FontWeight.bold);
TextStyle kBaseLowFont = GoogleFonts.gothicA1(fontWeight: FontWeight.w300);
TextStyle kNablaFont = GoogleFonts.nabla(fontWeight: FontWeight.bold);
BoxDecoration kBaseBoxDecoration = BoxDecoration(
    color: Colors.grey.withOpacity(0.3),
    borderRadius: BorderRadius.circular(10));

SliverToBoxAdapter kListTitle(String title) {
  return SliverToBoxAdapter(
      child: Text(
    title,
    style: kBaseAccentFont.copyWith(fontSize: 20),
    textAlign: TextAlign.center,
  ));
}

SliverToBoxAdapter kAdapterSizedBox() {
  return const SliverToBoxAdapter(child: SizedBox(height: 20));
}
