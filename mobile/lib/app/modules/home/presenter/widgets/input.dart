import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/colors.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

class Input extends StatelessWidget {
  final String titleInput;
  final String? initialValue;
  final TextInputType? type; 
  final bool active;
  const Input({super.key, required this.titleInput, this.initialValue, required this.active, required this.type});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleInput,
            style:
                GoogleFonts.poppins(textStyle: styleModifier.smallBoldWhite)),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 45,
          width: context.mediaWidth * 0.8,
          decoration: BoxDecoration(
              color: AppColors.primary, borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: type,
              enabled: active,
              initialValue: initialValue,
              decoration: InputDecoration(
                labelStyle: styleModifier.smallBoldWhite,
                hintStyle: styleModifier.smallBoldWhite,
              ),
              style: styleModifier.smallBoldWhite,
            ),
          ),
        )
      ],
    );
  }
}
