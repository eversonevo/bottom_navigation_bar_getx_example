import 'package:bottom_navigation_bar_getx_example/app/compras/home_module.dart';
import 'package:bottom_navigation_bar_getx_example/app/home/home_bindings.dart';
import 'package:bottom_navigation_bar_getx_example/app/home/home_module.dart';
import 'package:bottom_navigation_bar_getx_example/app/home/home_page.dart';
import 'package:bottom_navigation_bar_getx_example/app/inicio/home_module.dart';
import 'package:bottom_navigation_bar_getx_example/app/inicio/inicio_bindings.dart';
import 'package:bottom_navigation_bar_getx_example/app/inicio/inicio_page.dart';
import 'package:bottom_navigation_bar_getx_example/app/produtos/produtos_module.dart';
import 'package:bottom_navigation_bar_getx_example/app/relatorios/home_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: InicioBindings(),
      defaultTransition: Transition.fade,
      getPages: [
        ...InicioModule().routers,
        ...HomeModule().routers,
        ...ComprasModule().routers,
        ...ProdutosModule().routers,
        ...RelatoriosModule().routers,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,        
      ),
      home: const InicioPage(),
    );
  }
}

