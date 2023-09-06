import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/colors.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
        body: Container(
      height: context.mediaHeight * 1.0,
      width: context.mediaWidth * 1.0,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment(0.00, -1.00),
        end: Alignment(0, 1),
        colors: [Color(0xFF0FA8AF), Color(0xFF6E21D1)],
      )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 241,
              width: 221,
              child: Image.asset('assets/logo.png'),
            ),
            const SizedBox(
              height: 16.5,
            ),
            SizedBox(
              width: context.mediaWidth * 0.5,
              child: Text(
                "Seguradora com Blockchain",
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.poppins(textStyle: styleModifier.mediumWhite),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: context.mediaWidth * 0.7,
              child: Text(
                "Transformando o Setor de Seguros com Tecnologia Blockchain",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(textStyle: styleModifier.smallWhite),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                width: context.mediaWidth * 0.8,
                height: 29,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  "Entrar",
                  style: GoogleFonts.poppins(textStyle: styleModifier.smallWhite),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
