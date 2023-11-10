import 'package:bottom_navigation_bar_getx_example/app/UI/module.dart';
import 'package:bottom_navigation_bar_getx_example/app/compras/compras_bindings.dart';
import 'package:bottom_navigation_bar_getx_example/app/compras/compras_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class ComprasModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/compras',
      page: () => const ComprasPage(),
      bindings: [ComprasBindings()],
    )
  ];
}