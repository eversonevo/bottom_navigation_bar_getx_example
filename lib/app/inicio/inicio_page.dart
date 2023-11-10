import 'package:bottom_navigation_bar_getx_example/app/compras/compras_page.dart';
import 'package:bottom_navigation_bar_getx_example/app/home/home_page.dart';
import 'package:bottom_navigation_bar_getx_example/app/produtos/produtos_page.dart';
import 'package:bottom_navigation_bar_getx_example/app/relatorios/relatorios_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './inicio_controller.dart';

class InicioPage extends StatelessWidget {
    
    const InicioPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return GetBuilder<InicioController>(
          builder: (controller){
            return Scaffold(
            body: Obx(()=>IndexedStack(
              index: controller.tabIndex.value,
              children: const[
                HomePage(),
                ProdutosPage(),
                ComprasPage(),
                RelatoriosPage(),
              ],
            )),
            bottomNavigationBar: Obx(()=>BottomNavigationBar(
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.red,
              onTap: (value) {
                controller.chanceTabIndex(value);
                controller.imprimeAppBar();
              },
              currentIndex: controller.tabIndex.value,
              //showSelectedLabels: false,
              //showUnselectedLabels: true,
              items: [
                controller.bottomNavagationBarItem(icon: Icons.home, label: 'HOME'),
                controller.bottomNavagationBarItem(icon: Icons.production_quantity_limits, label: 'PRODUTOS'),
                controller.bottomNavagationBarItem(icon: Icons.compare, label: 'COMPRAS'),
                controller.bottomNavagationBarItem(icon: Icons.portrait, label: 'RELATÓRIOS'),
              ],
            )),
        );
          });
    }

    
}