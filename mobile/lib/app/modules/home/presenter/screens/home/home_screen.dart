import 'package:flutter/material.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/modules/home/presenter/widgets/appbar_widget.dart';
import 'package:mobile/app/modules/home/presenter/widgets/card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: const Column(
          children: [
            CardWidget(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
