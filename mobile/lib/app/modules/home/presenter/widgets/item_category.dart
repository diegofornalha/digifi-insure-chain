import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/styles/colors.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

class ItemCategory extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? destiny;
  const ItemCategory({super.key, required this.title, required this.icon, this.destiny});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Column(
      children: [
        GestureDetector(
          onTap: () => Modular.to.navigate('$destiny'),
          child: Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: AppColors.onPrimary,
                borderRadius: BorderRadius.circular(8)),
            child: Icon(
              icon,
              size: 24,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 90,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(textStyle: styleModifier.smallWhite),
          ),
        )
      ],
    );
  }
}
