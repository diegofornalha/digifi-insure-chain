import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/modules/home/presenter/screens/home/home_screen.dart';

class HomeModule extends Module {

  @override
  List<Bind> get binds => [

  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeScreen()),
  ];
}