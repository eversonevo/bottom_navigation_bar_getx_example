import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InicioController extends GetxController {
  RxInt tabIndex = 0.obs;
  RxString appBarText = 'HOME'.obs;

  void chanceTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    imprimeAppBar();
    super.onInit();
  }

  BottomNavigationBarItem bottomNavagationBarItem(
      {IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }

  void imprimeAppBar() {
    switch (tabIndex.value) {
      case 0:
        appBarText.value = 'HOME PAGE';
      case 1:
        appBarText.value = 'PRODUTOS PAGE';
      case 2:
        appBarText.value = 'COMPRAS PAGE';
      case 3:
        appBarText.value = 'RELATÓRIOS PAGE';
    }
  }
}
