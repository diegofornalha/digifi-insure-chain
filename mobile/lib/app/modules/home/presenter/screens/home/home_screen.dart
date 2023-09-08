import 'package:flutter/material.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_styles.dart';
import 'package:mobile/app/modules/home/presenter/widgets/appbar_widget.dart';
import 'package:mobile/app/modules/home/presenter/widgets/card_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/modules/home/presenter/widgets/item_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        width: context.mediaWidth * 1.0,
        height: context.mediaHeight * 1.0,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF0FA8AF), Color(0xFF6E21D1)],
        )),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CardWidget(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Categorias",
                style:
                    GoogleFonts.poppins(textStyle: styleModifier.mediumWhite),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <ItemCategory>[
                  ItemCategory(
                    title: "Contratar Seguro",
                    icon: Icons.security,
                  ),
                  ItemCategory(
                    title: "Seguros Contratados",
                    icon: Icons.security,
                  ),
                  ItemCategory(
                    title: "Seguros Vigentes",
                    icon: Icons.security,
                  ),
                  ItemCategory(
                    title: "Seguros Encerrados",
                    icon: Icons.security,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
