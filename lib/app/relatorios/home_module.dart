import 'package:bottom_navigation_bar_getx_example/app/UI/module.dart';
import 'package:bottom_navigation_bar_getx_example/app/relatorios/relatorios_bindings.dart';
import 'package:bottom_navigation_bar_getx_example/app/relatorios/relatorios_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RelatoriosModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/relatorios',
      page: () => const RelatoriosPage(),
      bindings: [RelatoriosBindings()],
    )
  ];
}