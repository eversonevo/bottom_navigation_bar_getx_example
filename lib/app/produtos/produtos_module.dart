import 'package:bottom_navigation_bar_getx_example/app/UI/module.dart';
import 'package:bottom_navigation_bar_getx_example/app/produtos/produtos_bindings.dart';
import 'package:bottom_navigation_bar_getx_example/app/produtos/produtos_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class ProdutosModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/produtos',
      page: () => const ProdutosPage(),
      bindings: [ProdutosBindings()],
    )
  ];
}