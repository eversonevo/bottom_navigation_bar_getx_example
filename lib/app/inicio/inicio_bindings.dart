import 'package:get/get.dart';
import './inicio_controller.dart';

class InicioBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(InicioController());
    }
}