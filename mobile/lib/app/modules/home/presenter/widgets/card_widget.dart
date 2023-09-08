import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

import '../../../../core/styles/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Container(
      height: 180,
      width: context.mediaWidth * 0.9,
      decoration: BoxDecoration(
          color: AppColors.onPrimary, borderRadius: BorderRadius.circular(16)),
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.20,
                  child: Container(
                    alignment: Alignment.center,
                    width: 178,
                    height: 18,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      "Invista na sua Segurança",
                      style: GoogleFonts.poppins(
                          textStyle: styleModifier.smallBlack),
                    ),
                  ),
                ),
                SizedBox(
                  width: context.mediaWidth * 0.5,
                  child: Text(
                    "Seguros com Blockchain",
                    style:
                        GoogleFonts.poppins(textStyle: styleModifier.bigWhite),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 114,
                  height: 26,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Ver seguros",
                    style: GoogleFonts.poppins(
                        textStyle: styleModifier.smallWhite),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 108,
              width: 70.85,
              child: Image.asset('assets/diamond.png'),
            )
          ],
        ),
      ),
    );
  }
}
