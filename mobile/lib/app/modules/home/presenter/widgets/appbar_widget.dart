import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

AppBar buildAppBar(BuildContext context) {
  final styleModifier = context.appTextStyles;
  return AppBar(
    elevation: 0,
    toolbarHeight: 80,
    leadingWidth: context.mediaWidth * 1.0,
    leading: Container(
      decoration: const BoxDecoration(color: Color(0xFF0FA8AF)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Image.asset('assets/icon-profile.png'),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey",
                  style: GoogleFonts.poppins(
                    textStyle: styleModifier.smallGray
                  ),
                ),
                Text("Belluzzo", style: GoogleFonts.poppins(
                  textStyle: styleModifier.mediumBlack
                ),)
              ],
            ),
          ],
        ),
      ),
    ),
    actions: const [
      IconButton(
        onPressed: null,
        icon: Icon(Icons.notifications),
        iconSize: 24,
        color: Colors.white,
      )
    ],
  );
}
