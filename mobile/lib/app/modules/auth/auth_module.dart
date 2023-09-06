import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/modules/auth/presenter/screens/welcome/welcome_screen.dart';

class AuthModule extends Module {

  @override
  List<Bind> get binds => [

  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute('/', child: (context, args) => const WelcomeScreen()),
  ];
}