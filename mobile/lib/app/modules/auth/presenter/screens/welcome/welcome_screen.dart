import 'package:flutter/material.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.mediaHeight * 1.0,
        width: context.mediaWidth * 1.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF0FA8AF), Color(0xFF6E21D1)],
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 241,
                width: 221,
                child: Image.asset('assets/logo.png'),
              )
            ],
          ),
        ),
      )
    );
  }
}