import 'package:flutter/material.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/modules/home/presenter/widgets/gohome_widget.dart';
import 'package:mobile/app/modules/home/presenter/widgets/input.dart';

import '../../widgets/appbar_widget.dart';

class HireInsuranceScreen extends StatelessWidget {
  const HireInsuranceScreen({super.key});

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
          child: const Padding(
            padding: EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoHomeWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  Input(
                    titleInput: "Tipo do Seguro",
                    initialValue: "Viagem",
                    active: false,
                    type: TextInputType.none,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Input(
                    titleInput: "Numero do VOO",
                    active: true,
                    type: TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                ],
              ),
            ),
          )),
    );
  }
}
