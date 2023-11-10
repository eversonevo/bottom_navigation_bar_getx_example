import 'package:bottom_navigation_bar_getx_example/app/UI/module.dart';
import 'package:bottom_navigation_bar_getx_example/app/home/home_bindings.dart';
import 'package:bottom_navigation_bar_getx_example/app/home/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      bindings: [HomeBindings()],
    )
  ];
}