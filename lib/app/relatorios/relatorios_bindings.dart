import 'package:get/get.dart';
import './relatorios_controller.dart';

class RelatoriosBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(RelatoriosController());
    }
}