import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

import '../../../../core/styles/colors.dart';

class GoHomeWidget extends StatelessWidget {
  const GoHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return GestureDetector(
      onTap: () => Modular.to.navigate("home"),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 41,
            width: 41,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.arrow_back,
              size: 24,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            "Contratar Seguro",
            style: GoogleFonts.poppins(textStyle: styleModifier.smallWhite),
          )
        ],
      ),
    );
  }
}
