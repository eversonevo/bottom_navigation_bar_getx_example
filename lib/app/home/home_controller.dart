import 'package:bottom_navigation_bar_getx_example/app/compras/compras_page.dart';
import 'package:bottom_navigation_bar_getx_example/app/home/home_page.dart';
import 'package:bottom_navigation_bar_getx_example/app/produtos/produtos_page.dart';
import 'package:bottom_navigation_bar_getx_example/app/relatorios/relatorios_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {


RxInt indexBottomNavBar = 0.obs;

final pages = <String>['/home','/compras', '/produtos', '/relatorios'];

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      ComprasPage(),
      ProdutosPage(),
      RelatoriosPage(),
    ];
    return IndexedStack(
      index: indexBottomNavBar.value,
      children: pages,
    );
  }

void changePage(int index) {
    indexBottomNavBar.value = index;
    Get.toNamed(pages[index]);
  }

@override
  void onInit() {
    super.onInit();
  }

@override
  void dispose() {    
    super.dispose();
  }

}