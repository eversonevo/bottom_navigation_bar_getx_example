import 'package:bottom_navigation_bar_getx_example/app/UI/module.dart';
import 'package:bottom_navigation_bar_getx_example/app/inicio/inicio_bindings.dart';
import 'package:bottom_navigation_bar_getx_example/app/inicio/inicio_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class InicioModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/inicio',
      page: () => const InicioPage(),
      bindings: [InicioBindings()],
    )
  ];
}